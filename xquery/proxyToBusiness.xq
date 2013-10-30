(:: pragma bea:global-element-parameter parameter="$secondMethodReq1" element="ns1:secondMethodReq" location="../xsd/SecondMethod.xsd" ::)
(:: pragma bea:global-element-return element="ns0:segundoMetodo" location="../xsd/XMLSchema_1210350368.xsd" ::)

declare namespace ns1 = "http://www.massarotto.com.br/SecondMethod";
declare namespace ns0 = "http://ws.massarotto.com.br/";
declare namespace xf = "http://tempuri.org/DynamicProxy/xquery/proxyToBusiness/";

declare function xf:proxyToBusiness($secondMethodReq1 as element(ns1:secondMethodReq))
    as element(ns0:segundoMetodo) {
        <ns0:segundoMetodo>
            <parametro>{ data($secondMethodReq1/ns1:parametro) }</parametro>
        </ns0:segundoMetodo>
};

declare variable $secondMethodReq1 as element(ns1:secondMethodReq) external;

xf:proxyToBusiness($secondMethodReq1)
