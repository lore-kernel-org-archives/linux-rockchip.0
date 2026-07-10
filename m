Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6F7C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 13:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bD1wLzfTLwzsCZaou6/eQbGLhp4GDfx5mdup4in/SqA=; b=wXYJN+i3ptas5Q
	RlnyzplnhONtR7OeZf7NAhs+ec745Ib2AxLJEw7d/yu+lFK33LCFH7pDDKyKtUd65F8G6FOxnin3I
	htZjk2U+s41uxrEohCByou5NSAdR85l+ZRE9h4avBOVoEisCMH9YS9InH+ROe5QSHWbdampT7TfFu
	tShk2Ym6qnRo45SmsAVxnC5JMyxyGWQDC6hnu5JOwZQqsq6Pj5dbYcmx9FBdIV/N9ld/rouU6gj+/
	vnq6IgxSvoTbG4cZHW9FpiiBJZuPoHKbMY9V5XaH84Saj+h1/3Dxaajd55Dk8LrZXe3HYJGUzqsO0
	L1kWSMV7d99UBjgV7Thg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBBD-00000004zqD-3rk1;
	Fri, 10 Jul 2026 13:22:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBBA-00000004zpM-45HN
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 13:22:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AD6kon701183
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 13:22:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXG7S3p3xLtYKwJ43eakLYqv4N13Bj7bELOQ9MVpdnE=; b=AXt0FCIk3DGKI/Nf
	pBp5yCPv6UEDsmhYLoWUYxfExoDKdSex+bAkYEDQtib/RTLJMBNYLluw59O+WHLC
	vI/00XWT7TMDcDQeBJswrEXoYtCFKxoLOecFNi6J0l9j1JfKUfibky7pgMm3CtK+
	X4gElHkuw4loNDmcjzmQCrApudoXCsKa69wvqBc5PMc68BwgWgLpKF5AcO4n1CCi
	+qtIE8LwMX8RwiXmNcHB5C7kBFI/8m+a6JGoh3Qq0I3W5MZ1ioiH1UHx1HMnZfw3
	D5INMvKJtgt2A3csGxHhlwcgkrfszkPh6dolM+adj5ldp9WDJg7JTfoAWLIdJtJ4
	xZW0UQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fahv8kfmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 13:22:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c0408254aso24574981cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 06:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783689727; cv=none;
        d=google.com; s=arc-20260327;
        b=kuVcUMAiNsMLwlIesl2Qsm9OESvey9tjCchWmmyKfam+H1kyQuy1uentO4b2HAWpfH
         oGzQG1zQjB9Cwqz7Zr0ZsYyza3Wcy0CG1oBQukXGzFowtxym6NOLpbwSe1NqOwtJkhbh
         dwLRf3EwX1XdsyHSBNIWk0ap3nR+iXOoLB/WHOYPRMown+L58yWu5n9MilFXJ3215Ri3
         FVBaH7T8Het3nwhDlsl5qfhq4n9KBbELzhT8X/9WTYppAeyYmoyeEXKA8y14kmKUGjdM
         jz5DWUT2oh/eL/DYR+AteMb94KKES+sF4Sp4Fzwv1imrxFolxTzkHdj5zj3En7sY/PrZ
         Is6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SXG7S3p3xLtYKwJ43eakLYqv4N13Bj7bELOQ9MVpdnE=;
        fh=Bs1ba6wWcwjmlAKuC7hsaoVEBt6ovMEWPPq/fAHFnGo=;
        b=fj+2EAMc39U5rglo+1XNU8LzAG+unXYmLMrRz8fkWKZGO5eIC7f6GT1RAEr0/yboaG
         /qvzXM07eE7ABmKRVbVzNSBBLSRSTl4c+70Hm1qFA9WcUDwSo4hiWqCF0sAHWBiQNRAs
         JoxBijKUnSepCdo3GJZLtEFpgfDnOTXJhTPVxoLXHt01kBdl5SaxMJfBxzmW5iMCF9BY
         lQ7y3HmffSfaMAjE9Qid498EzreNuRXHWLzRz7D6hslf3cBx2QnojKG7tDaHItrPnb0+
         pcs87EZ+hp/sc3gXrguocKeNdAfwUtCXHJ5DPSeW1POzm3aTHasYKle803BRzhCqzii3
         9gZw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783689727; x=1784294527; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SXG7S3p3xLtYKwJ43eakLYqv4N13Bj7bELOQ9MVpdnE=;
        b=eptyUaJdJVBUB5xb2EFY+F+VNjCVtvk7VrAN94nXtOkKJZEGuC2ECvWOZmxvJvyuok
         Z5pJ260tseWXSKYout8d8GW5JdEfuBb2EnaY4V0qR25b+4Rw/pWxBZku+zfAa2N8O0N9
         3ekQU8itQ87N5O3N9/69j6Xi9gwQG4zd+YRBpqFr6x1FGolZcypwLQSdCBrjjSyFtbmN
         pZURZDhI+hQ+BQvkOAk50THIMrVqPfzW2/2N7rmjsp9QeV+xWz6rOcVj41w6QFZaYtmH
         M/piAuImu7L30uELaQIqAU1dOSFLwoyZR300Vrc3mnlvWc9m4EaR3t8dT0dYc39cNhwx
         VXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783689727; x=1784294527;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SXG7S3p3xLtYKwJ43eakLYqv4N13Bj7bELOQ9MVpdnE=;
        b=p7YsThpZ6jYkM2cRabXPrU+AydPmA6jNhPZvfPInuHtBRGeyPQzvL6JAW+nDFpIZPQ
         glXmKThWAjqXLG1nl95Vv9ayrfaTMmRTMp90gmYQuj8q7Vaf8tTKNyzq9iopc53CYLm+
         T+wXm7TAr8r/B8P0z0OUHOxXxbdP1iVphcuGmJCHn50X5mAiD/u7v1fEm9t3xaMWpttH
         Pdo5+7GRzQG51cbv9TkYgWSEbqXLRUOX4EWxpdAYiMTk8vG0kPvFu5tQ4IF78L90WlCg
         jRvoBBAUaHFVmQIEywxDhtGQX2iyui1B0uasDI1mITE4+6R+E8uBfXBxL7FpF35c8/XP
         +mcw==
X-Forwarded-Encrypted: i=1; AHgh+RqqHHd3tyHI8arDTglK1tiFhf9nxwwN/Ev2hA3lEg/PoCuw0HPQfF0+xMmDEigAMuD6WD01d0c/8i9I26yKBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5Ckzqf5Hgh4alNy+vcrWUUJ8jhnsvw5H9aJK4beECDb+FqAIU
	APfI2KR6+QOCI+7Et3zOWPczWU+9te3C68NbGeczhnnl/vQWnvHpG9KnwCzSOtRzMhzpqFfjiqu
	NxErDZxNrH0jhxRwhqfRqnIhIXZQIwripyjeV4BOAZu0N9wHHmAkias/7QhsnHvU+OAe7JKouUa
	97VnjdK0FNGj+Cz4Yca3LxMNWd0M4YO3QLqPWMER9CRfM6wYS6jETJ1L+CTA==
X-Gm-Gg: AfdE7cnQAi6da8+IIj3oXYpYe1miCNq1ETnYfpa1EGCr1wY+FEI/krThtYkRt8XwkVQ
	NSJpoxAa7WJ8JlR5WGeWhPqTwZXiupMhW5PzULg9slHDzwkwzN9i6L0kLmmFtlGFEsDMp43/lrn
	qEMTGIhKJqw6Z0777yxlZ3OOiLiXD697z3PfXHy/knKpBkIPEydcJYcj0a1OUQ4K6DX6Gx
X-Received: by 2002:a05:622a:4d8e:b0:51b:fcc1:a0b7 with SMTP id d75a77b69052e-51caa02bee5mr34237421cf.8.1783689727476;
        Fri, 10 Jul 2026 06:22:07 -0700 (PDT)
X-Received: by 2002:a05:622a:4d8e:b0:51b:fcc1:a0b7 with SMTP id
 d75a77b69052e-51caa02bee5mr34236931cf.8.1783689726914; Fri, 10 Jul 2026
 06:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260706195818.3906949-1-sjg@chromium.org> <20260706195818.3906949-8-sjg@chromium.org>
In-Reply-To: <20260706195818.3906949-8-sjg@chromium.org>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 15:21:56 +0200
X-Gm-Features: AUfX_mzmOYvznpst6Fhzo_RRhZo2t92NP1TaOref0jVQgAZ-t89JABzPIjGVV8E
Message-ID: <CAPx+jO8t8JoTJJCCMU_yz0yyGQCSA4cKsmpSeX_=jEMUwuYsuQ@mail.gmail.com>
Subject: Re: [PATCH 07/12] dt-bindings: mmc: rockchip-dw-mshc: Add RV1106 compatible
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
X-Proofpoint-GUID: xmgv_r_-Rg_DQlTs23iN0QO4KVZsXqBl
X-Proofpoint-ORIG-GUID: xmgv_r_-Rg_DQlTs23iN0QO4KVZsXqBl
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEzMSBTYWx0ZWRfX2oSesHn61jG5
 jEo6uehZT1vIZlBjqbEywwpAjcEVTA1fCuhE2ueYCDNTjMazOeEX1hcl56qCLALbhGshtnOtn8G
 dI7P/nZ3miwaB55injVXPQ55S+JdtRk=
X-Authority-Analysis: v=2.4 cv=funsol4f c=1 sm=1 tr=0 ts=6a50f200 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=cm27Pg_UAAAA:8 a=-hWoO2I3uisOaqaBfXAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEzMSBTYWx0ZWRfXw6AVflbibfIz
 F16hbeqGCzb2arRt0UImQGcgr8Fh8qyQS3mqHg7zZio/FfgmHFf/JiYJV4rNhh7eDdIU5dudsmq
 AzHjASrro9pEiGUTXErzH0SxcLf9mGLs8nL0NMGEUO1xCUCodWFE+di68zD4VxpWVrs53/EnJct
 ed6D7shIq61TBAUpF1dTeRSDAde8uS4oAwjiL4ovQAj3tUMY1izBesb3V61oP6u5g4TgrruN3a3
 nwGti6pHrHCZLZrCKmqsWlO21kbWpu29pkhrWuA2cJDXVEYtXVHADeRIdh7GABE76Q973x6acvO
 t3x5WApMceS2fUMU229pPZeoeRus68DGiJKcz6B9X9Z1DNXMkYYSv5nEBVZREOmNOUM90dncYg6
 z+yvS32ip6eQRQl1tMHQe02EZrvaE35T2n9tqPEFwVIhOrMicM22xLZ8y2xKv38K03C0B2DlE0E
 NFBe33XFcZKBIrU0bFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_062209_012131_93FED57F 
X-CRM114-Status: GOOD (  17.50  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdWwgNiwgMjAyNiBhdCA5OjU54oCvUE0gU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1
bS5vcmc+IHdyb3RlOgo+Cj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0aGUgTU1DIGNvbnRyb2xs
ZXJzIG9mIHRoZSBSb2NrY2hpcCBSVjExMDYsCj4gd2hpY2ggYXJlIGNvbXBhdGlibGUgd2l0aCB0
aGUgUkszMjg4IHZhcmlhbnQuCj4KPiBVbmxpa2UgdGhlIG5ld2VyIGNvbnRyb2xsZXIgaW4gdGhl
IFJWMTEwM0IsIHdoaWNoIHVzZXMgdGhlIFJLMzU3Ngo+IGZhbGxiYWNrLCB0aGUgUlYxMTA2IGNv
bnRyb2xsZXIgaXMgdGhlIG9sZGVyIElQIHdob3NlIGRyaXZlIGFuZCBzYW1wbGUKPiBwaGFzZXMg
YXJlIHNldCB0aHJvdWdoIGNsb2NrcyBwcm92aWRlZCBieSB0aGUgR1JGLCBzbyB0aGUgUkszMjg4
Cj4gZmFsbGJhY2sgaXMgdGhlIGNvcnJlY3Qgb25lIGhlcmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBT
aW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4KCkFwcGxpZWQgZm9yIG5leHQsIHRoYW5rcyEK
CktpbmQgcmVnYXJkcwpVZmZlCgoKPiAtLS0KPgo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCj4gaW5kZXggNDk2NWJi
NTE4YzU0Li4yMWVjZmFhNDU0ZjQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbAo+IEBAIC00
Myw2ICs0Myw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1
NjItZHctbXNoYwo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTY4LWR3LW1zaGMKPiAg
ICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1kdy1tc2hjCj4gKyAgICAgICAgICAgICAg
LSByb2NrY2hpcCxydjExMDYtZHctbXNoYwo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscnYx
MTA4LWR3LW1zaGMKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJ2MTEyNi1kdy1tc2hjCj4g
ICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMyODgtZHctbXNoYwo+IC0tCj4gMi40My4w
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
