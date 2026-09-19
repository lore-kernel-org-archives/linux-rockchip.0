Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F63CC982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 09:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQMQSjcVwr1kxEPOyxXEyIDwe6Ef7/e/sVeao7ZFKZM=; b=1C4XR1PphUGRPt
	oSFHLFd1KQ86M3itMqb0dbyOv3QDUwbGJsTZS37AWtCbN++KQx5E3Rq+SK52xPVzgzBoAxJnCY/f+
	hxgEejXisiDHtvbXKZQwYyFFM9d8UbUUKRYDNNmcNirzEnY4kITnjx8gUY7ZjYwA929k4BwaS7zzs
	kTbyNcm5AjJgStpa+uFzuMjxI7iJKGAJeQSPep82+c4bvnYiZ0FBopxtXTLQ6qxbZ4Gw0Lu9xgcV5
	rXHi1zsJ0EQF5St7mBjRQM5aTeHf3SkZxcUxGFSvcmK5Lg0XVf08nCzpX9vvpf0oDj+AEOKcS6v7H
	Z5jqTSIxHIpWUUkAJ1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rFw-0000000G7qR-2EfQ;
	Sat, 19 Sep 2026 09:21:13 +0000
Received: from flow-a1-smtp.messagingengine.com ([103.168.172.136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rFt-0000000G7oh-0aJi;
	Sat, 19 Sep 2026 09:21:10 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id 7A4A71380CC3;
	Sat, 19 Sep 2026 05:21:04 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Sat, 19 Sep 2026 05:21:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1789809664;
	 x=1789816864; bh=MGYptzQitBqvlBeqfLUR1pvxKBwqhA+k9O947J2Uzs4=; b=
	KKJxgAPqGf8ffn9cEzGN/lmRPaI84KnadpYFXzKCX9hE2ejUIq68mi4u49PvWfgc
	Itlb19ZH3qr7BojbMyQRo+ba2NPVuxshKxNHPNc1n0WoFm2P82SdvXVe/ozusaqU
	UUuNFmN3pT+MAIOXefE4Sv9U8sKTnAH69sCP1ZzXN2aKc8adbqjGCZ5y3vHL5yUn
	DebvNQKunanNCX2bmcP83jS/V3bgaOaMTSMerlAWCQ2EgFBXQ1ZRTTrcYTU71eEv
	lbzAJDJUW1lP7r0QDdMJOaObYpwLv8jsh3ZCwwwsKuWBDf/iXMBIEia/Vxnb/8S7
	nxGJsoWmFpCeajtr5MutCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1789809664; x=
	1789816864; bh=MGYptzQitBqvlBeqfLUR1pvxKBwqhA+k9O947J2Uzs4=; b=w
	LA7xh2o3RY19SYTpHtjFoN2bWuBr9Jl0X822TEzfg09UxehR9IxivJ/PPDbEq5vh
	xknj+g7mVbq0BrIyxwjz7mQPl76Es0GLU76nsl2Jc5PWQZ2aYnu4tSWX2U+CEbOU
	duXnb8byYslI35rhb9G1P41C+PXcxQA0LTyXYnfwnUdPfuutf27xS+i0HNDcYlJc
	mgqWClJS3odJaqniOPApq6NW3P2YBAq8VK9RlSsIgQ3yQUFHVbKCGOJnK9XiOEZD
	XKwatuiR9o5xSppMVRA8v/P+uFKq6qikqTrSgLJnHtuSO/CDe3DZZJW23Dy/fkvD
	ZW547r14CEX+ogHG402fg==
X-ME-Sender: <xms:_VOuaoMc3T-ITDLbcqgHBdCUnJzWxvJ2B31OHOBqLt2R6J_GHk_kgg>
    <xme:_VOuaqs_CdaHWRrECVh8zBB_Oyed8sjnn2zi8cyFPVs8HxgcW-AM-CDenZ6BvPCg9
    zlQ4TZCJOVtaZNgCLdbweoHYhCfqfMC5hHqD0aLFaBIweeaNQUjKTmY>
X-ME-Received: <xmr:_VOuan099myfjV70XEVtLI9rCteLcp3wwc72aBYnA1KSo0aM_0JVaFlzyhM1LK5r-Kar73jmByYogctH37tNWYeVENTK3UI>
X-ME-Proxy-Cause: dmFkZTEHzaPBOkzhEZKtlcJiHuaR/8A9YwcvLFmST50NgBICej+vTp5vMhNNvAsQoG90/2
    Jm0kDSLPlHjTl32jVWjbcwmLDSqw4GyHFeDhV0053Ev7hF2r8HtYhx1OQFrcFYUvp22zhD
    bwa3p77dJnCDUtHCllEbqhJvrcmU7/C1lASmVI5bvK/T4qtdpnBur25H1DkP7UkKXPQC/j
    elUdagyi5wVvBIc8Nks2/9BjgcJJqa08jQYX7fGyZhY2tU8D8FNMzrqNvQRW4UOnqv29DO
    Z3Z15oIGz+UspWal/6k8HrhYZj+XVKhxeKCuy8RhfhaOSuu8zlDB0q69H/9Oe3rv7hs/Wn
    ZGWF+6lY0YfPnQu0pkLeDFn6uVWRwRv3tWt2cnBI8Mig3THTVbziWZT3hx0FavRU1Rblw2
    5GJ1NCrct8YFcaHTUsLESEIG9dn4bGZyc3OuX6C4ucocsN5peK2laUn1i/p649xuZe4yDu
    V9gsVPzHsvP7DCumtstJA6KfKFLICxe7Ru/+RiSUSIleLOGD4tyf6+IMKgLo2rk4eyaZo+
    A7NyVb8ONLKLmtm+YaDKnf1kykpl1RplpJr0gIHd9q1fENpv+FWekqgFQI2/j8Oy2+G7o+
    pftD3dpMRQhb9hVe3tAsXetfhuC7wxDXeMfAKz0fypwUl3oZ3oPUXI0wHjNg
X-ME-Proxy: <xmx:_VOuah2y4LFz1PpadpumYBxfc98D0-tdHUeGo910UPdHnB2MAwoLcw>
    <xmx:_VOuaqq125S6Unzcn9Y0ECrr5LgGIJIXBZEy27KqgbK5ukiGRB_g-w>
    <xmx:_VOuai0UYZvkkFR3qjdiC9hpdOm_mE8nabOFF-wFotoZzh3c314HmA>
    <xmx:_VOuaj0j1IjBEGZ5neb_ubNG80H_nWXeTS--3M-4wyMouLo54xV9WA>
    <xmx:AFSuakOZvT35vQTN-w2q-qm0NMqiAOAQOnWSEbPNjOLlAV8dYkNEXA1S>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 19 Sep 2026 05:21:00 -0400 (EDT)
Date: Sat, 19 Sep 2026 11:20:57 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,	Jacopo Mondi <jacopo@jmondi.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jimmy Su <jimmy.su@intel.com>,	Matthias Fend <matthias.fend@emfend.at>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Martin Kepplinger <martin.kepplinger@puri.sm>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Tommaso Merciai <tomm.merciai@gmail.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Richard Acayan <mailingradian@gmail.com>,	Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,	Heiko Stuebner <heiko@sntech.de>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,	linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH v6 3/6] arm64: dts: renesas: Convert to new media
 orientation definitions
Message-ID: <20260919092057.GA1099675@ragnatech.se>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
 <20260918-kbingham-orientation-v6-3-5e8b1f01be29@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918-kbingham-orientation-v6-3-5e8b1f01be29@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_022109_350007_6EAE5AA6 
X-CRM114-Status: GOOD (  17.83  )
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

SGkgS2llcmFuLAoKVGhhbmtzIGZvciB5b3VyIHdvcmsuCgpPbiAyMDI2LTA5LTE4IDExOjQ0OjE1
ICswMTAwLCBLaWVyYW4gQmluZ2hhbSB3cm90ZToKPiBGcm9tOiBLaWVyYW4gQmluZ2hhbSA8a2ll
cmFuLmJpbmdoYW0rcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+IAo+IFRoZSBvcmllbnRhdGlv
biBwcm9wZXJ0eSBmb3IgdmlkZW8gaW50ZXJmYWNlIGRldmljZXMgbm93IGhhcyBkZWZpbml0aW9u
cwo+IHRvIHByZXZlbnQgaGFyZGNvZGVkIGludGVnZXIgdmFsdWVzIGZvciB0aGUgZW51bSBvcHRp
b25zLgo+IAo+IFVwZGF0ZSB0aGUgdXNlcnMgdGhyb3VnaG91dCB0aGUgcmVuZXNhcyBkZXZpY2Ug
dHJlZXMgdG8gdXNlIHRoZSBuZXcKPiBkZWZpbml0aW9ucy4KPiAKPiBSZXZpZXdlZC1ieTogR2Vl
cnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBSZXZpZXdlZC1ieTog
TGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydCtyZW5lc2FzQGlkZWFzb25ib2FyZC5j
b20+Cj4gUmV2aWV3ZWQtYnk6IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4gU2ln
bmVkLW9mZi1ieTogS2llcmFuIEJpbmdoYW0gPGtpZXJhbi5iaW5naGFtK3JlbmVzYXNAaWRlYXNv
bmJvYXJkLmNvbT4KClJldmlld2VkLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNvZGVy
bHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KCj4gLS0tCj4gIC4uLi9hcm02NC9ib290L2R0cy9y
ZW5lc2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajEtaW14MjE5LmR0c28gfCAzICsr
LQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3NzlnMy1zcGFycm93LWhhd2stY2Ft
ZXJhLWoxLWlteDQ2Mi5kdHNvIHwgMyArKy0KPiAgLi4uL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMv
cjhhNzc5ZzMtc3BhcnJvdy1oYXdrLWNhbWVyYS1qMi1pbXgyMTkuZHRzbyB8IDMgKystCj4gIC4u
Li9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajIt
aW14NDYyLmR0c28gfCAzICsrLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZW5l
c2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajEtaW14MjE5LmR0c28gYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ZzMtc3BhcnJvdy1oYXdrLWNhbWVyYS1qMS1pbXgy
MTkuZHRzbwo+IGluZGV4IDNhY2FmNzE0Y2YyNC4uYjgxNjM4MmJiYTBhIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3NzlnMy1zcGFycm93LWhhd2stY2FtZXJh
LWoxLWlteDIxOS5kdHNvCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3
OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajEtaW14MjE5LmR0c28KPiBAQCAtMTIsNiArMTIsNyBA
QAo+ICAKPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+ICAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy5oPgo+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvbWVkaWEvdmlkZW8taW50ZXJmYWNlLWRldmljZXMuaD4KPiAgCj4gICZ7L30gewo+ICAJ
Y2xrX2NhbV9qMTogY2xrLWNhbS1qMSB7Cj4gQEAgLTQ0LDcgKzQ1LDcgQEAgY2FtQDEwIHsKPiAg
CQlWRElHLXN1cHBseSA9IDwmcmVnX2NhbV9qMT47Cj4gIAkJVkRETC1zdXBwbHkgPSA8JnJlZ19j
YW1fajE+Owo+ICAKPiAtCQlvcmllbnRhdGlvbiA9IDwyPjsKPiArCQlvcmllbnRhdGlvbiA9IDxN
RURJQV9PUklFTlRBVElPTl9FWFRFUk5BTD47Cj4gIAkJcm90YXRpb24gPSA8MD47Cj4gIAo+ICAJ
CXBvcnQgewo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5
ZzMtc3BhcnJvdy1oYXdrLWNhbWVyYS1qMS1pbXg0NjIuZHRzbyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOGE3NzlnMy1zcGFycm93LWhhd2stY2FtZXJhLWoxLWlteDQ2Mi5kdHNvCj4g
aW5kZXggYTE5YmMwODQwMzkyLi40MDE5YjgwYTg4YjcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajEtaW14NDYy
LmR0c28KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ZzMtc3BhcnJv
dy1oYXdrLWNhbWVyYS1qMS1pbXg0NjIuZHRzbwo+IEBAIC0xMiw2ICsxMiw3IEBACj4gIAo+ICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9tZWRpYS92aWRlby1pbnRlcmZhY2VzLmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9tZWRp
YS92aWRlby1pbnRlcmZhY2UtZGV2aWNlcy5oPgo+ICAKPiAgJnsvfSB7Cj4gIAljbGtfY2FtX2ox
OiBjbGstY2FtLWoxIHsKPiBAQCAtNDYsNyArNDcsNyBAQCBjYW1AMWEgewo+ICAJCXZkZGEtc3Vw
cGx5ID0gPCZyZWdfY2FtX2oxPjsKPiAgCQl2ZGRkLXN1cHBseSA9IDwmcmVnX2NhbV9qMT47Cj4g
IAo+IC0JCW9yaWVudGF0aW9uID0gPDI+Owo+ICsJCW9yaWVudGF0aW9uID0gPE1FRElBX09SSUVO
VEFUSU9OX0VYVEVSTkFMPjsKPiAgCQlyb3RhdGlvbiA9IDwwPjsKPiAgCj4gIAkJcG9ydCB7Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3NzlnMy1zcGFycm93
LWhhd2stY2FtZXJhLWoyLWlteDIxOS5kdHNvIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2Fz
L3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajItaW14MjE5LmR0c28KPiBpbmRleCA1MTI4
MTBiODYxYWEuLmZlYTFlZjRhMTE3OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlbmVzYXMvcjhhNzc5ZzMtc3BhcnJvdy1oYXdrLWNhbWVyYS1qMi1pbXgyMTkuZHRzbwo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3NzlnMy1zcGFycm93LWhhd2stY2Ft
ZXJhLWoyLWlteDIxOS5kdHNvCj4gQEAgLTEyLDYgKzEyLDcgQEAKPiAgCj4gICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21lZGlhL3Zp
ZGVvLWludGVyZmFjZXMuaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21lZGlhL3ZpZGVvLWlu
dGVyZmFjZS1kZXZpY2VzLmg+Cj4gIAo+ICAmey99IHsKPiAgCWNsa19jYW1fajI6IGNsay1jYW0t
ajIgewo+IEBAIC00NCw3ICs0NSw3IEBAIGNhbUAxMCB7Cj4gIAkJVkRJRy1zdXBwbHkgPSA8JnJl
Z19jYW1fajI+Owo+ICAJCVZEREwtc3VwcGx5ID0gPCZyZWdfY2FtX2oyPjsKPiAgCj4gLQkJb3Jp
ZW50YXRpb24gPSA8Mj47Cj4gKwkJb3JpZW50YXRpb24gPSA8TUVESUFfT1JJRU5UQVRJT05fRVhU
RVJOQUw+Owo+ICAJCXJvdGF0aW9uID0gPDA+Owo+ICAKPiAgCQlwb3J0IHsKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1l
cmEtajItaW14NDYyLmR0c28gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ZzMt
c3BhcnJvdy1oYXdrLWNhbWVyYS1qMi1pbXg0NjIuZHRzbwo+IGluZGV4IGEzMTUyNGI1OTgzNC4u
MTc3MjAxYThhNmQyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9y
OGE3NzlnMy1zcGFycm93LWhhd2stY2FtZXJhLWoyLWlteDQ2Mi5kdHNvCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OWczLXNwYXJyb3ctaGF3ay1jYW1lcmEtajItaW14
NDYyLmR0c28KPiBAQCAtMTIsNiArMTIsNyBAQAo+ICAKPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2dwaW8vZ3Bpby5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvbWVkaWEvdmlkZW8taW50ZXJm
YWNlcy5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvbWVkaWEvdmlkZW8taW50ZXJmYWNlLWRl
dmljZXMuaD4KPiAgCj4gICZ7L30gewo+ICAJY2xrX2NhbV9qMjogY2xrLWNhbS1qMiB7Cj4gQEAg
LTQ2LDcgKzQ3LDcgQEAgY2FtQDFhIHsKPiAgCQl2ZGRhLXN1cHBseSA9IDwmcmVnX2NhbV9qMj47
Cj4gIAkJdmRkZC1zdXBwbHkgPSA8JnJlZ19jYW1fajI+Owo+ICAKPiAtCQlvcmllbnRhdGlvbiA9
IDwyPjsKPiArCQlvcmllbnRhdGlvbiA9IDxNRURJQV9PUklFTlRBVElPTl9FWFRFUk5BTD47Cj4g
IAkJcm90YXRpb24gPSA8MD47Cj4gIAo+ICAJCXBvcnQgewo+IAo+IC0tIAo+IDIuNTIuMAo+IAo+
IAoKLS0gCktpbmQgUmVnYXJkcywKTmlrbGFzIFPDtmRlcmx1bmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
