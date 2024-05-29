Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06854C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 18:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZRsJqlqvR4Qp0JjsOFmQY9FChEeSFk2xsjvJxnWI7Q=; b=jArt1lyzhLWw02
	P9Nz4ZS1gcXJQ/E92D9vyD1ARg5NkX5vCeFT0wf+OB2699kAyDag86Npf19eh3JscBy/Q/FB0kg46
	LsQOmIPtYlMTuaiIbgoQJQP8FbWjCcR+pmq2TDUwh6ilip2iQ6L0aXhd7rpVEfEUh82vPQhEuGczb
	CbBCOVJQQxWt+mgi/uzi/152LkPaJyey5t29vbPm9kV2Cc++ymAJSv0iUKI1F4ISw7QTtp0CNMnvA
	VY4TXcwuCgZ2eJrB7+ac+83rSEQlC0g72KYRFoXIgHfdaDxfGi3FkbFMO53vvwJ9DAPVuV6JwILe7
	Q4MyezQWtE8awqT/qYsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCOLo-00000005Fa5-0DR8;
	Wed, 29 May 2024 18:48:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCOLl-00000005FZ0-37Ln;
	Wed, 29 May 2024 18:48:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44TBVbJQ012157;
	Wed, 29 May 2024 18:48:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ab81luCQi39eJfDPVl2fNVgypINjt9s7zOvtaAtxDg8=; b=YYNj6qobyCffIr2g
	WnEBNc1XeMzQROmhvtKSiBwUJBZkv1vdyqn44Jc71ALpmMOAi04pP0GbJp6kd+wk
	wu1ZZkRYC0ISAIF1zla//7Nw8rpn0yy2iowAa0pFsACqPQyo6EgxFmZjo26jUYs/
	NtukDGd3MB68iJGDZT6UtytdIZOcvM1qEvLHRxjBBFBi4xPDpgu2okLRMpbAEgC4
	MWe6T8KLTaQVLwQQC2/lBrVKU0HR+p98SJcNBW8GqY1Qk2fQQoh28a0dNt8YMFOX
	YJed9XiOy830qKYWp5poffWMYkJQ116MsI5fo3nzPujVoAwawVtjt6+4HpBHbTYt
	hO5XAg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yb9yja498-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 May 2024 18:48:18 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44TImGmU026691
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 May 2024 18:48:16 GMT
Received: from [10.71.110.249] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 29 May
 2024 11:48:10 -0700
Message-ID: <05306686-922c-6646-3308-ebd6bc3e1219@quicinc.com>
Date: Wed, 29 May 2024 11:48:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 4/6] drm/ci: uprev IGT
To: Vignesh Raman <vignesh.raman@collabora.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
CC: <dri-devel@lists.freedesktop.org>, <daniels@collabora.com>,
        <helen.koike@collabora.com>, <airlied@gmail.com>, <daniel@ffwll.ch>,
        <robdclark@gmail.com>, <david.heidelberg@collabora.com>,
        <guilherme.gallo@collabora.com>, <sergi.blanch.torne@collabora.com>,
        <mcanal@igalia.com>, <linux-mediatek@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <amd-gfx@lists.freedesktop.org>,
        <linux-arm-msm@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
        <virtualization@lists.linux-foundation.org>,
        <linux-kernel@vger.kernel.org>
References: <20240529024049.356327-1-vignesh.raman@collabora.com>
 <20240529024049.356327-5-vignesh.raman@collabora.com>
 <bj6mpegmxo6i5o34xyxwiytdaokv2u6p5iu4eoek3ctqimwviy@jbo5aw7gy4ue>
 <12f14064-fd1c-4e9c-94ee-ba7d492a4056@collabora.com>
Content-Language: en-US
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <12f14064-fd1c-4e9c-94ee-ba7d492a4056@collabora.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: yAOcEUDxqMb3ILGVj-wikK1cqOlETKxm
X-Proofpoint-ORIG-GUID: yAOcEUDxqMb3ILGVj-wikK1cqOlETKxm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-29_15,2024-05-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0
 clxscore=1011 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2405290129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_114837_953893_F6FAF392 
X-CRM114-Status: GOOD (  15.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiA1LzI5LzIwMjQgMjo0OCBBTSwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPiBIaSBEbWl0cnks
Cj4gCj4gT24gMjkvMDUvMjQgMTM6MzksIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdl
ZCwgTWF5IDI5LCAyMDI0IGF0IDA4OjEwOjQ3QU0gKzA1MzAsIFZpZ25lc2ggUmFtYW4gd3JvdGU6
Cj4+PiB0ZXN0LWxpc3QudHh0IGFuZCB0ZXN0LWxpc3QtZnVsbC50eHQgYXJlIG5vdCBnZW5lcmF0
ZWQgZm9yCj4+PiBjcm9zcy1idWlsZHMgYW5kIHRoZXkgYXJlIHJlcXVpcmVkIGJ5IGRybS1jaSBm
b3IgdGVzdGluZwo+Pj4gYXJtMzIgdGFyZ2V0cy4gVGhpcyBpcyBmaXhlZCBpbiBpZ3QtZ3B1LXRv
b2xzLiBTbyB1cHJldgo+Pj4gSUdUIHRvIGluY2x1ZGUgdGhlIGNvbW1pdCB3aGljaCBmaXhlcyB0
aGlzIGlzc3VlLiBBbHNvCj4+PiBkaXNhYmxlIGJ1aWxkaW5nIHhlIGRyaXZlciB0ZXN0cyBmb3Ig
bm9uLWludGVsIHBsYXRmb3Jtcy4KPj4+Cj4+PiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtv
diA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+Pj4gU2lnbmVkLW9mZi1ieTogVmlnbmVz
aCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gdjI6
Cj4+PiDCoMKgIC0gU3BsaXQgSUdUIHVwcmV2IHRvIHNlcGVyYXRlIHBhdGNoLgo+Pj4KPj4+IHYz
Ogo+Pj4gwqDCoCAtIE5vIGNoYW5nZXMuCj4+Pgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vY2kvYnVpbGQtaWd0LnNowqAgfCA0ICsrKysKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS9n
aXRsYWItY2kueW1sIHwgMiArLQo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Np
L2J1aWxkLWlndC5zaCAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLWlndC5zaAo+Pj4g
aW5kZXggYjdkMmE0OWE2ZGIzLi5lZGRiNWY3ODJhNWUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vY2kvYnVpbGQtaWd0LnNoCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvYnVp
bGQtaWd0LnNoCj4+PiBAQCAtNDUsNiArNDUsMTAgQEAgCj4+PiBNRVNPTl9PUFRJT05TPSItRG92
ZXJsYXk9ZGlzYWJsZWTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtRGxpYnVud2luZD1lbmFibGVkwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC1EcHJlZml4PS9pZ3QiCj4+PiAraWYgW1sgIiRLRVJORUxfQVJDSCIg
PSAiYXJtNjQiIF1dIHx8IFtbICIkS0VSTkVMX0FSQ0giID0gImFybSIgXV07IHRoZW4KPj4+ICvC
oMKgwqAgTUVTT05fT1BUSU9OUz0iJE1FU09OX09QVElPTlMgLUR4ZV9kcml2ZXI9ZGlzYWJsZWQi
Cj4+PiArZmkKPj4+ICsKPj4+IMKgIG1rZGlyIC1wIC9pZ3QKPj4+IMKgIG1lc29uIGJ1aWxkICRN
RVNPTl9PUFRJT05TICRFWFRSQV9NRVNPTl9BUkdTCj4+PiDCoCBuaW5qYSAtQyBidWlsZCAtaiR7
RkRPX0NJX0NPTkNVUlJFTlQ6LTR9IHx8IG5pbmphIC1DIGJ1aWxkIC1qIDEKPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbCAKPj4+IGIvZHJpdmVycy9ncHUv
ZHJtL2NpL2dpdGxhYi1jaS55bWwKPj4+IGluZGV4IDhmMzJkZTYzZDkyZS4uMWIyOWMzYjY0MDZi
IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwKPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1sCj4+PiBAQCAtNSw3ICs1LDcgQEAg
dmFyaWFibGVzOgo+Pj4gwqDCoMKgIFVQU1RSRUFNX1JFUE86IGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2RybS9kcm0KPj4+IMKgwqDCoCBUQVJHRVRfQlJBTkNIOiBkcm0tbmV4dAo+Pj4g
LcKgIElHVF9WRVJTSU9OOiBkMmFmMTNkOWY1YmU1Y2UyM2Q5OTZlNGFmZDNlNDU5OTBmNWFiOTc3
Cj4+PiArwqAgSUdUX1ZFUlNJT046IDBkZjdiOWI5N2Y5ZGEwZTM2NGY1ZWUzMGZlMzMxMDA0Yjhj
ODZiNTYKPj4KPj4gTGV0J3MgbGFuZCB0aGlzLCB0aGVuIEknbGwgYXNrIHRvIHVwcmV2IHRvCj4+
IGRjMmQ3ZmI0Zjk3ODA0OGI4NzcwN2VhOWVjMzJkYTc0OGIwMWIzNzgsIHdoaWNoIGZpeGVzIGFu
IGlzc3VlIHdpdGggdGhlCj4+IHdyaXRlYmFjayB0ZXN0cyBvbiBNU00gZGV2aWNlcy4KPiAKPiBT
dXJlLiBPbmNlIHRoaXMgaXMgbWVyZ2VkLCB3ZSBjYW4gdXByZXYgdG8gdGhlIGxhdGVzdCBJR1Qu
Cj4gCj4gUmVnYXJkcywKPiBWaWduZXNoCj4gCgpUaGFua3MsIHllcyBtb3ZpbmcgdG8gbGF0ZXN0
IElHVCBhZnRlciB0aGlzIGlzIG1lcmdlZCB3aWxsIGJlIGdyZWF0LgoKPj4KPj4+IMKgwqDCoCBE
RVFQX1JVTk5FUl9HSVRfVVJMOiAKPj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9h
bmhvbHQvZGVxcC1ydW5uZXIuZ2l0Cj4+PiDCoMKgwqAgREVRUF9SVU5ORVJfR0lUX1RBRzogdjAu
MTUuMAo+Pj4gLS0gCj4+PiAyLjQwLjEKPj4+Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
