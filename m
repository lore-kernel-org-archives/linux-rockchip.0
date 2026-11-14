Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A498606A336
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 11:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=thNTtzUD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=PiBqRjkM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=L9GpcGKG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WGGu8T60dGJBMIHXlCJW5Fb/u7rd0gNh9AhJo2yKwHE=; b=thNTtzUDMWXHlZy05NRQivMW/J
	r9Oz0OM0Mr3U6eMfeYDUoYm+gSZK2aQ8r6DLR6k8MZjDyGTyXheXGs8EKCUh3bFigmsMglj8JCIj4
	VPxdvwwjbCQjB2Jk05Lg9MKnl8wQLRaALON7UBIhnE7gDTNiITqLQz2pwzFx8t2u54RmaiYdfRGkZ
	RTQxEflfyhqF+r0x5h7ZKlOG078Q0gLGFKuyVqjyKg1BnS84WOhINk2ue+rOc5EeOTU4j96ktj+PE
	XEZrs/P/Z+uCLC2rg59hH2tIsXsCLY/AbOS1qpzetOHGGVD35tSVvOLliPY99Yl8t7msY5vv3gzQA
	0Byqrxhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCGt-0000000FvFx-0YgJ;
	Sat, 14 Nov 2026 11:50:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCGr-0000000FvEr-17WW
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 11:50:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wftW465142
	for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 11:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1/1WLzYMEGYQaXjv2m5ge60WfeRW/hTmJOCmO45FGgk=; b=PiBqRjkM9SPylZBt
	4LD9BvT6t4t8REbdmGqwIYc/Ollq5iLejeb8xDGD+RFr59mzoaWq3uhTy7UYITKs
	MnhtYpWRbdBwtAH68Y5AoaaBkSudeMnzZPWJwsf5E2IiNQnBpHYeQdBPQHWUHhTS
	9XO4mqOnpn7qJSfIpZ6SW+WJ5NIJGdRdNataVC+Z0zxpeV9BJV7TjD6CNNT0L3s6
	01ZLJl3TCsz3eVOWMqVzu/q0i+tu423bKhPMn8QZ4q9sZnpRZKZ6+gMt+SFnnDXX
	c/rHVPQX9tWKPiOnNR/7qOfnxK+yzRXFCAMxGVkobtJGbo3+OoR5wJFr09QI289T
	9mF8Eg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhdrnsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 11:50:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b18165dc53so2721900a91.3
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 03:50:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794657012; cv=none;
        d=google.com; s=arc-20260327;
        b=qmUCrrUQF+5Xr4c8MhlJYJwDfHkO8W4+LekNhCs5GsSaDcAIvITbFkC8ys3NUJbfKq
         ds6tkMGuXySN3FrrrJOZvZePp+T0lf4X6l6ukNWbL5GuDuB9B1RC2cWlgkRSmO1XPR/X
         keKZ99rk1ymQiTWPnWCIy/AC+LPzvZMTsBPxtT12eSNvtHR3FGsliaEdqoSI4I2L5d83
         9d0QwG4q5qB1K2HM28xUmNkH4+7i3zmH7XR6EP3moTrISncnWtVOG8Wrxmt+wdR7RRuq
         qT2APmp3r4TOixHlVQgFBAyjRJ10sy379et1OEq+/QGzyy0Yy/pcQIxcdpAJiJYKzGPb
         xgTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1/1WLzYMEGYQaXjv2m5ge60WfeRW/hTmJOCmO45FGgk=;
        fh=5hy1rBst0IAhwql0Dvmfls3kKoEv1fLSqcSc9Ahklzk=;
        b=jrozGrO1CHmKLgMZ8MUB1QJddulZRArT+I8DYRXZyRZm7ALAYJdum4KBnNaNjVjlV2
         BmvTd9ny4E/TYVbfnioACA+HIrPzlji/RSezVQnmihbruoR9qvBMHrmT+YrJNBXUvx9O
         iPNmtGziEB8nP3NUx3yShbWlKXcR9LeQL/XB1kOe60elbx1F8smaLwQ3Q84jg37OWXAY
         2HfcXBL7C2M+qhRfC4UjXsaKN35V/sDcTfA0zMn28YOCqxIxrdDfgxVA40biojeERrgW
         wF3Wk/udZ5Aw6Ii1JCh3/upD6CkzohREQ8dOuloON4AfGhiNsi3mpZKiHldbq3E7ettT
         KQQw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794657012; x=1795261812; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1/1WLzYMEGYQaXjv2m5ge60WfeRW/hTmJOCmO45FGgk=;
        b=L9GpcGKGDFkOf6gAxxFBS55T7EU8OMhj9bdbo7gbW7+x0LuEy5rSGZOzdNq0kBgAGF
         5l/ytJDUE98FK9y/1Hr7kwnqaoVmyU7kV8hooVq/0z7STFMXMR8dS1QvQd7V6S4vt2+H
         gqj8+mbmj1qhLyG+k9dlKFK+87/n0Ctv7uLvTCfXl/FufiuGm2KuTXqMpP7xfWEYTS/h
         m+Gx8Lizq1Vs8TJp79sY+5khZ78iIwEOGbHCiu1C9uFr4c/6orLC8CpyK/NuydxQ4t4j
         ZrXT8VjaB4uY/zIU+lMDrOiUEdF3JB1YpwLbrve/gGUeiHC2YRfaPyL4UhqcS136kejm
         HlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794657012; x=1795261812;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1/1WLzYMEGYQaXjv2m5ge60WfeRW/hTmJOCmO45FGgk=;
        b=SbQK6TASv8CrDABaIQ+DrHLEGO/rs84oXG9rsyFBoB4zl5VUJoroSuDl9SzgHv8BvO
         gUSKXo+68SvH8rLC9yT3Gv+HJMHbkoeycLwlw0QKdjVtuhDMiq7yo7Gce/QMrbJ9aXPG
         Nrk3Tb38QOmqUibEIOi2pHcTZ7UM6d/SfHMrtjEZSyi2zRHyrL80bajRb0n9LwicVGS0
         xI/jiHGWHnmlogaph2oPYWGaet0kEQXywLsv4XwughPzmFLpGBngXJybOjdCYl3I3wAG
         NGB/itDwqcceH1cpr7MAavziqB+2ftIrhV36fdt/SW40wSAOwqhEVF8SlPYOcLMS454u
         tCVg==
X-Forwarded-Encrypted: i=1; AL+hErEXpQ7k9N/UXHGu5FAeNUO9qt1VhHu8pdCVmaHEPH5H+jz2pmgTxk5HxE7yOBHJ9NfzwwsXpYeuINzqyHCT2Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z+2N6+PRJf7whD0HvchQJqkbfxMF072EawEDuTZQx7DqWpHwfoN
	PQAsKgsbKMlC0130MXrDndibXnwnCVMRxNaUjEOYuIqteiyiebqXHiQ20jWfsufHmZBSTZAHF9z
	riWPavpan9o7u6PX/CKYjmfsgFYwLklvG4+XGSa1Gjcw7eQzuccJ5vaInbYv4fjrvYgeSfALMnv
	46bRJWkrfIJYXkR/dHe+JcsXYiaYbjfvIJRx9MUotEi7neFS8ywg==
X-Gm-Gg: AYBFou3dHUijlcjfBsF6uhrcq88ngPfJOl+2c9+52uPBfybb9xVqfO7l7ZVO6glw2iq
	SVDp6RqHkyYekim7T0cVBCTy3D+kDnVw5ZZdOS6jh3MNF/reecX8ycoggvhRgzA29N9elr3dNI+
	LOy0wlygAnFi8QNGxJZcD06AN7B2mO3jXwjAec24qPHHIjYB5hpYmiLn2Sdg==
X-Received: by 2002:a17:90b:3ec4:b0:3ab:c80:9370 with SMTP id 98e67ed59e1d1-3b1b09e5ed0mr4929465a91.20.1794657012068;
        Sat, 14 Nov 2026 03:50:12 -0800 (PST)
X-Received: by 2002:a17:90b:3ec4:b0:3ab:c80:9370 with SMTP id
 98e67ed59e1d1-3b1b09e5ed0mr4929447a91.20.1794657011622; Sat, 14 Nov 2026
 03:50:11 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105001257.1368266-1-me@ziyao.cc>
In-Reply-To: <20261105001257.1368266-1-me@ziyao.cc>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 12:50:00 +0100
X-Gm-Features: AclHuK_M9u9pSitA56QWlgF1DmcZaRUB93icyXp210YoENL1vh_SV8siUFJBQLc
Message-ID: <CAPx+jO-OzHrQ2GXfBzWLRHSgyTpyphhvRONCwohg_F3OM8YgQg@mail.gmail.com>
Subject: Re: [PATCH 0/2] Error and deferred probe fixes to Rockchip PM domain driver
To: Yao Zi <me@ziyao.cc>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Sergey Shtylyov <s.shtylyov@auroraos.dev>,
        Midgy BALON <midgy971@gmail.com>,
        Finley Xiao <finley.xiao@rock-chips.com>,
        Frank Zhang <rmxpzlb@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Kevin Hilman <khilman@linaro.org>, Caesar Wang <wxt@rock-chips.com>,
        Elaine Zhang <zhangqing@rock-chips.com>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=VOVIDNPX c=1 sm=1 tr=0 ts=6af84af4 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=NEAV23lmAAAA:8 a=LTGKUmlCnc3-cF2NnXYA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NiBTYWx0ZWRfX2PivyPAqeJjk
 PS5FbdTuFe4+DT4vxoc05itVrdOViG+gm1KD2TGi/MzocwVxpWElu2fik27ME5a+oS5eU07tZRb
 x7CecM7Cu6OrwdlGc1R4mLoVUetzZ+A=
X-Proofpoint-ORIG-GUID: GSxf0UbnFolc2vpAgIpLhzAkLeckTwcg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NiBTYWx0ZWRfX86WoMZ+bk3bx
 Y24ocVDc0I3coJgjPQ847we2BvkmNq5b6BSCX0GaFtHu3CSmCZICtxVat7WZWni6hPvs8o+P0u+
 YWrlJv+imMavmXzihosVUs7zUqGK1kDniUhV13if768uX2Tz2KJdQ4rYy3KzRs/l6EkRE0bMgj0
 bEkyAIJmoqpvE+CK17FtM3Yerc5ckuwlIMhyaDtHVlOhGzh5aHBS40bBZYQ5lMjykHY+NFLoK6+
 1x0NQAYMGCTvuldveFTyOEDGPHHxsaEEa82wzIq7orKuuJMVP+BrUCnyjc9Ple3TbmbO3lcjjCw
 EaJMhO/SaJPdjTJM3hnW4SozkVCnBVwj8BF2W7Ea0gWhrQD/wXrBgjHvp+0z1kXNWt9K2uC45N5
 6O2e9AcgzFyz3DME5r5trV/+2R0qbvFVu/KeygJc0XiVO+3xASYcVjsi8Dapb0pF+MZlBc0qhMJ
 2oJ3xX5rTLK9PG885hQ==
X-Proofpoint-GUID: GSxf0UbnFolc2vpAgIpLhzAkLeckTwcg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_035013_311582_3C2B2F8B 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgNSwgMjAyNiBhdCAxOjEz4oCvQU0gWWFvIFppIDxtZUB6aXlhby5jYz4gd3Jv
dGU6Cj4KPiBUaGVzZSBpc3N1ZXMgd2VyZSBmb3VuZCBhZnRlciBJIHVwZ3JhZGVkIGEgUkszNTI4
IGJvYXJkIHRvIHY3LjMga2VybmVsLgo+IEhlcmUncyBhIGNvbmZpZ3VyYXRpb24gdGhhdCBJIHVz
ZWQgdG8gcmVwcm9kdWNlIGJvdGggb2YgdGhlc2UgdHdvCj4gcHJvYmxlbXNbMV0uCj4KPiBUaGFu
a3MgZm9yIHlvdXIgdGltZSBhbmQgcmV2aWV3Lgo+Cj4gWzFdOiBodHRwczovL2dpc3QuZ2l0aHVi
LmNvbS96aXlhbzIzMy9hNWVlODg2MmQxYmFmMjFhZDc1NmNmNGU5NTllMTRjMwo+Cj4gWWFvIFpp
ICgyKToKPiAgIHBtZG9tYWluOiByb2NrY2hpcDogT25seSBwdXQgY2xvY2tzIHRoYXQgaGF2ZSBi
ZWVuIHN1Y2Nlc3NmdWxseQo+ICAgICBvYnRhaW5lZAo+ICAgcG1kb21haW46IHJvY2tjaGlwOiBE
b24ndCBsb2cgd2hlbiBvZl9jbGtfZ2V0KCkgZmFpbHMgd2l0aAo+ICAgICAtRVBST0JFX0RFRkVS
Cj4KPiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAyNCArKysrKysr
KysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjU2LjAKPgoKUGF0Y2ggMSBhcHBsaWVkIGZvciBmaXhl
cyBhbmQgcGF0Y2gyIGZvciBuZXh0IChieSBkcm9wcGluZwpmaXhlcy9zdGFibGUgdGFncyksIHRo
YW5rcyEKCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
