Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29DE9C4829D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI36dybC61AOUKFRpnVBi8cIz7N0CqFBb9lpXw8kuQE=; b=MaKYM1JwLHxT/1
	F/3AP3R7IDReP00DyoU0SSEWbnQnlbSI2xRNH23UyeqXflRGzTgW/YiUQssHmHLEu/TscscdO9ja7
	It1ehfpz7Ze52jLbhdMmTnC4v6xgJGQ0q8eAcRcrL8F1GWWILpT58KFDwCQOHA+J/cD49l7hCISmH
	VyOUT2CWj5SK4HBl5zISSVJUX9LqQl4X0AN75297fK1d1fIBgq3/E0ctUXZ053VL4LSh1TtcgHV1H
	gPDHNd52VD3khutkc5Ti6IJmakIIFh3TSvGRvUN1Nkq50Pts7+CmC5bEKwzLmUCh9mcQqzOjnvuiX
	Hn26BYS/EBMulBcsmlVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6rg-0000000BoYc-1bBJ;
	Wed, 14 Feb 2024 04:27:20 +0000
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6rc-0000000BoXU-36Hx;
	Wed, 14 Feb 2024 04:27:17 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id E7A2911400CC;
	Tue, 13 Feb 2024 23:27:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Tue, 13 Feb 2024 23:27:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1707884835; x=1707971235; bh=NcDqWldwOd38d78Sab57ZcHkd6M15Epg
	BXZmppi5guU=; b=qs2P9hefaHjj53jCs7xvzmkhxzNirHB7fBfeMubnx6bLkn2g
	3JUlEcaYrDAltnTY1mR3QsbC/utMAA5vmyzFYlA3o1en3kI4we4AqjfDqVZmaz92
	49KxIEvBoNfSiUBeP+scY78x0ss+ZJkY0SDyCIq6B1RDRU97NHBf9qxCgcEFyhvq
	F+ARvySi1pgRXCReTrDAqReMRd9EzMfB03MADKvrNwDl6w+Fq2WO4aLD/WyRzga6
	no6ZBDHwCXwGxAzZwBHUQs94U1iEStRNgl0SaO5z68qhYUx3WttTlvKcmgd9TgAf
	NtWZcLYgQ0TCNl8aV/dnZwMQKU6Xl9VTigLsDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707884835; x=
	1707971235; bh=NcDqWldwOd38d78Sab57ZcHkd6M15EpgBXZmppi5guU=; b=S
	FcASVsSdhyYXhlJIsm3VKqlIO43D0QQYLCFUnLLjzecomk004GoE+RenTKqFeI7L
	GHUu/Ppa8qCoeydRaPGE4Vd6QRzCJiiZo9R51+e7w2alUPxv4nCzgkCUt8vkcfxt
	5s6dTCJk5uZhSnoon0QY0elbqVmNktzjHYMrJfWAD777TMfZmNSjOsmmiZICG2/m
	Nj8oNO3sihET6DrH5SmWGs71tonmfaDgrqmoybkf1pmmHea6VBKCJxSW69Cjsh6M
	vJ0t7y8ZWTtYDYitmSYIeuNshxAvMD7VI+HVK2R1rnrkvKS7LeDYRmlfjYd3MyEq
	AJL/fWaDmQ72iBtCd6m/w==
X-ME-Sender: <xms:I0HMZZ8vJqWoj4L05vDQe5BlBq-t1u9EGb1_51UyReDFgz5XQzorEA>
    <xme:I0HMZds8lbD8fjZcEy2mXENdQMT46386GB3u71ywQV3Yh9sfn7ugcSOcBSirSxiPg
    g9R0p05EQ>
X-ME-Received: <xmr:I0HMZXADfD9LLKtsGayRai3RVZGZHNU495y-AkUcLFwxl038JAJqsaQ0S2rQLT59DJ5MJrZX-EhucdpfNwP1_x-L43_AFqYLwOqVcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdejfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeeugeefgfevueeitdehfffgfeevjeekteeihffhvdejveelhfeukeduueelgefhkeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:I0HMZdeCBwPfnT1ZIH0n26LFgfadXuZOPl7VDgxPfzBSVH8fgggPIw>
    <xmx:I0HMZeOjN1bErTEzCVtjYu5gSM8IwUNZ8RV1o61DZ1MfKNusRKN_bA>
    <xmx:I0HMZflVGSMJgYnWtvsO8jBnCK0mBavjdmsEpkcTK9CACqrWUeX2xg>
    <xmx:I0HMZTw09S9uGhOiQQufUIfKJKEaVAAEBk89p69zQ16q7RmP_tMsQg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:27:10 -0500 (EST)
Message-ID: <e952d127-b12d-4b5a-838b-807a876db707@feathertop.org>
Date: Wed, 14 Feb 2024 15:27:08 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
Content-Language: en-US
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 David Heidelberg <david@ixit.cz>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>,
 Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240214040731.3069111-1-tim@feathertop.org>
 <c03220db663279c9e83bab81f3d829e7@manjaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <c03220db663279c9e83bab81f3d829e7@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_202716_871315_1FFF6302 
X-CRM114-Status: GOOD (  14.03  )
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

SGkgRHJhZ2FuLAoKT24gMi8xNC8yNCAxNToxNCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxv
IFRpbSwKPgo+IE9uIDIwMjQtMDItMTQgMDU6MDcsIFRpbSBMdW5uIHdyb3RlOgo+PiBBIGNvdXBs
ZSBvZiByb2NrY2hpcCBib2FyZHMgaW5jb3JyZWN0bHkgbGlzdCB0aGVpciB2ZW5kb3IgYXMgUm9j
a2NoaXAKPj4gd2hlbiB0aGV5IGFyZSBpbiBmYWN0IG5vdCBtYW51ZmFjdHVyZWQgYnkgUm9ja2No
aXAuCj4+Cj4+IEZpeCB0aGUgdmVuZG9yIHN0cmluZ3MgdG8gY29ycmVjdGx5IGxpc3QgdGhlIG1h
bnVmYWN0dXJlcgo+Cj4gSnVzdCBjaGVja2luZywgaGF2ZSB5b3UgdmVyaWZpZWQgdGhhdCB0aGUg
b2xkLCBpbmNvcnJlY3QgImNvbXBhdGlibGUiCj4gc3RyaW5ncyBmcm9tIHRoZSBib2FyZCBkdHMg
ZmlsZXMgYXJlbid0IHVzZWQgYW55d2hlcmUgaW4gdGhlIGtlcm5lbCBjb2RlLAo+IHN1Y2ggYXMg
aW4gc29tZSBkcml2ZXJzPwo+ClllcyBJIGNoZWNrZWQgdGhhdCwgdGhlcmUgYXJlIG5vIHJlbWFp
bmluZyByZWZlcmVuY2VzIHRvIHRoZSAKb2xkL2luY29ycmVjdCBjb21wYXRpYmxlIHN0cmluZ3Mg
aW4ga2VybmVsIGNvZGUKClJlZ2FyZHMKIMKgwqAgVGltCj4gT3RoZXJ3aXNlLCBmb3IgdGhlIGVu
dGlyZSBzZXJpZXM6Cj4KPiBSZXZpZXdlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFy
by5vcmc+Cj4KPj4gVGltIEx1bm4gKDQpOgo+PiDCoCBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hp
cDogQ29ycmVjdCB2ZW5kb3IgZm9yIE9yYW5nZSBQaSBSSzMzOTkgYm9hcmQKPj4gwqAgZHQtYmlu
ZGluZ3M6IGFybTogcm9ja2NoaXA6IENvcnJlY3QgdmVuZG9yIGZvciBCYW5hbmEgUGkgUjIgUHJv
Cj4+IMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGp1c3QgdmVuZG9yIG9uIEJhbmFuYSBQaSBS
MiBQcm8gYm9hcmQKPj4gwqAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkanVzdCB2ZW5kb3Igb24g
b3JhbmdlcGkgcmszMzk5IGJvYXJkCj4+Cj4+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgOCArKysrLS0tLQo+PiDCoGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0c8KgwqDCoCB8IDIgKy0KPj4gwqBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0c8KgIHwgMiArLQo+
PiDCoDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
