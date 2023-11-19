Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA6EC2BB3F
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 03:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RosEDhbndvDdLbviME8TShNC/rGzbzcYFLD2Iiuvew8=; b=cPJsjdofqVb4r0
	SP6S99bSFxBdHvdHzj1mj7DgUcQ96zA3xO+AkUCahooKsr3uXXe9s0ndh9zQ3RCugAxPKgCayBOrS
	I/AtrhJlcPbKGNQvGXvw69z030eHqMBm4NQae+oT2KdQV8p7xCkf0WG9vvYJicj+yLyKvWBtPpZ0c
	fOdzMGvZkW7KBczXEqHvV+8/L+PhGfkU2uOJiQPrgUm8Z3+B6NvNLa3wFI+GCEn4VU4t+e06WI4pn
	0VTpK1nrpfOfnzuomGzH1m6h9I9EStUQ0Q2tMnccofPefjGi/pFuiv2Xt4mdcfg5wwm2fcti+dHrc
	xzd5Zmca8Hr3K4Qp6YZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4Y7z-009RWC-0T;
	Sun, 19 Nov 2023 03:05:43 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4Y7v-009RV5-0r;
	Sun, 19 Nov 2023 03:05:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 3C26F3200920;
	Sat, 18 Nov 2023 22:05:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 18 Nov 2023 22:05:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1700363128; x=1700449528; bh=PpsFfFSNPUPHay4RnH2xZcaes
	VPMLMaNoafz7K2FrBQ=; b=LExbs8DHfGssoP+5hWg2b91HiWDGSS3DHejHEiBLJ
	DA7trRJ1PXF0GwrRS760IY4GmL2xAqcDd22+ZNFVYVeBYXf4XlNN6VNn2IeEVrFR
	uCOX5PcVo2m08YAn+sx0+TlH5DY/5jyndCZ9eHocORjDHD7TpsMrFpdXKpnvby4z
	xIQoPjBmaFbStc4CEg2mdVVuYW+dGFBKV76MaXfWVCS/XLI4eO1J1OOVauNyB+TN
	tmMb0iWkCeeoQ08wynoScGTBJutXplBDTSxA4wiQqpEaIO8tikefpLKQiaSfAwk9
	Cd0Cp+ygXc0yCjEy17UL4XuDRfpghfkExSIuS6UKiRSGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1700363128; x=1700449528; bh=PpsFfFSNPUPHay4RnH2xZcaesVPMLMaNoaf
	z7K2FrBQ=; b=qSpOKIV1t4HgztMpj63aVmm48rAcmOu6hxpmm6YlWdN1v9/x0Cn
	YFWIHuz8XNC4Ndseir/ZmFjitbhwFyakeRg4oCSXe5lgyoig/stAqgpRmeX3LNY3
	zcZPtzrD+ge/JTowlAr7uEg8cFhxyxypFPjKbQ3cqsDtuak5DO5hu+kpiXaHxDC7
	wzJbpl+PVutVrr72w4X9bkR5KG6wvz1/oyo8JZqeUZMH7PEpl8ccsqFmx1ped9pr
	UDqWOfVTysmCeM3Wv0YK2ccNh7i98juwrwv2Th8UTCnsriKQeTW8rZD1kW3d8M8p
	EPOi8FcLUCBJb+qsE6bXcYw4AnwaEiTd/tg==
X-ME-Sender: <xms:eHtZZRVVavCGcAzA3yrnmSvd5xlC9OLAcdd3YSOhPKp00DpKuOv6Mg>
    <xme:eHtZZRk0CdOp6JlaNbKlCsxHeChwJDhZ1y8DNsCdGown8lWCsmqW5iLiE_dSFFZxD
    M2VSn06BA>
X-ME-Received: <xmr:eHtZZdb8JcwarsuaVqYKCxdC6B9D2SqA70L78QYqr8ZAbMuv1-1A-pMktKTI5xZVUrgGmsSzQV6uOcQqqBw384ZvlGIpxn_viPGjJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudegfedgheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:eHtZZUVXgPt9tj8GWo_YhIBsso2-IFig548YteZUENSLaSCMOmUsSw>
    <xmx:eHtZZbnq7OnwTg6ZNW0HyIc50BAZID-yP_aTFTeej3azsTgpa1CXOw>
    <xmx:eHtZZRfDNMYMRYHXXeOVfGAduk8of-5pWrWMl58MLHnlSAt_REnd5A>
    <xmx:eHtZZZYpm_iatg93-3TDGfPR9x4xm6ZBNkvOtTRZrfWqJyDwHp76Cg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 18 Nov 2023 22:05:25 -0500 (EST)
Message-ID: <38f2c4a8-2b80-44f1-b9a5-29c3e86be56f@feathertop.org>
Date: Sun, 19 Nov 2023 14:05:20 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-8-tim@feathertop.org> <4921575.Y6S9NjorxK@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4921575.Y6S9NjorxK@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231118_190539_663242_9E03A746 
X-CRM114-Status: GOOD (  20.26  )
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

SGkgSGVpa28sCgpPbiAxMS8xOC8yMyAyMzowOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
VGltLAo+Cj4gQW0gTW9udGFnLCAxMy4gTm92ZW1iZXIgMjAyMywgMTM6MDc6MDQgQ0VUIHNjaHJp
ZWIgVGltIEx1bm46Cj4+IFNvbm9mZiBpSG9zdCBpcyBnYXRld2F5IGRldmljZSBkZXNpZ25lZCB0
byBwcm92aWRlIGEgU21hcnQgSG9tZSBIdWIsCj4+IGl0IGlzIGJhc2VkIG9uIFJvY2tjaGlwIFJW
MTEyNi4gVGhlcmUgaXMgYWxzbyBhIHZlcnNpb24gd2l0aCAyR0IgUkFNCj4+IGJhc2VkIG9mZiB0
aGUgUlYxMTA5IGR1YWwgY29yZSBTb0MuCj4+Cj4+IEZlYXR1cmVzOgo+PiAtIFJvY2tjaGlwIFJW
MTEyNgo+PiAtIDRHQiBERFI0Cj4+IC0gOEdCIGVNTUMKPj4gLSBtaWNyb1NEIHNsb3QKPj4gLSBS
TUlJIEV0aGVybmV0IFBIWQo+PiAtIDF4IFVTQiAyLjAgSG9zdAo+PiAtIDF4IFVTQiAyLjAgT1RH
Cj4+IC0gUmVhbHRlayBSVEw4NzIzRFMgV2lGaS9CVAo+PiAtIEVGUjMyTUcyMSBTaWxhYnMgWmln
YmVlIHJhZGlvCj4+IC0gU3BlYWtlci9NaWNyb3Bob25lCj4+Cj4+IFRoaXMgcGF0Y2ggYWRkcyB0
aGUgaW5pdGlhbCBkZXZpY2UgdHJlZSBmb3IgdGhpcyBkZXZpY2UsIGl0IGlzIGxhcmdlbHkKPj4g
YmFzZWQgb2ZmIHRoZSBkZXZpY2UgdHJlZXMgZm9yIG1haW5saW5lIEVkZ2VibGUgTmV1MiBhbmQg
ZG93bnN0cmVhbQo+PiBSb2NrY2hpcCBydjExMjYtZXZiLXYxMyBjb25maWdzLiBJdCBoYXMgYmVl
biBhZGFwdGVkIHdpdGggcmVsZXZhbnQKPj4gcGVyaXBoZXJhbCBhbmQgR1BJTyBwaW5zIGZvciB0
aGUgaUhvc3QuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRpbSBMdW5uIDx0aW1AZmVhdGhlcnRvcC5v
cmc+Cj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEwOS5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTA5LmR0c2kKPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi45Y2JhYTA4YWIxYjgKPj4gLS0tIC9k
ZXYvbnVsbAo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMDkuZHRzaQo+
PiBAQCAtMCwwICsxLDIzIEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjArIE9SIE1JVCkKPj4gKy8qCj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgRnV6aG91IFJvY2tj
aGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgo+PiArICovCj4+ICsKPj4gKy9kdHMtdjEvOwo+PiAr
Cj4+ICsjaW5jbHVkZSAicnYxMTI2LmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCWNvbXBhdGlibGUg
PSAicm9ja2NoaXAscnYxMTA5IjsKPj4gKwo+PiArCWNwdXMgewo+PiArCQkvZGVsZXRlLW5vZGUv
IGNwdUBmMDI7Cj4+ICsJCS9kZWxldGUtbm9kZS8gY3B1QGYwMzsKPj4gKwl9Owo+PiArCj4+ICsJ
YXJtLXBtdSB7Cj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMjMgSVJRX1RZUEVfTEVWRUxf
SElHSD4sCj4+ICsJCQkgICAgIDxHSUNfU1BJIDEyNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4g
KwkJaW50ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZjcHUxPjsKPj4gKwl9Owo+PiArfTsK
PiB0aGlzIGRlZmluaXRseSB3YW50cyB0byBiZSBpdHMgb3duIHBhdGNoIDstKSAuCj4KPiBJLmUu
IHlvdSBhZGQgc3VwcG9ydCBmb3IgdGhlIHJ2MTEwOSwgd2hpY2ggc2VlbXMgdG8gYmUgdGhlIHNh
bWUgYXMgcnYxMTI2LCBqdXN0Cj4gd2l0aCAyIGluc3RlYWQgb2YgNCBjcHUgY29yZXMuCkkgd2ls
bCBzcGxpdCB0aGlzIG91dC4gWWVzLCBydjExMDkgaXMgaWRlbnRpY2FsIHRvIHRoZSBydjExMjYg
YXBhcnQgZnJvbSAKdGhlIG51bWJlciBvZiBjb3Jlcy4KCkkgaW5pdGlhbGx5IGhvcGVkIHJ2MTEw
OSBjb3VsZCBqdXN0IHVzZSB0aGUgc2FtZSBkZXZpY2UgdHJlZSwgYnV0IGhhdmluZyAKdGhlIGV4
dHJhIGNvcmVzIGVuYWJsZWQgZW5kcwp1cCBjYXVzaW5nIHBhbmljcy4KCj4KPgo+Cj4+ICsmc2Rp
byB7Cj4+ICsJYnVzLXdpZHRoID0gPDQ+Owo+PiArCWNhcC1zZC1oaWdoc3BlZWQ7Cj4+ICsJY2Fw
LXNkaW8taXJxOwo+PiArCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPj4gKwltYXgtZnJlcXVlbmN5
ID0gPDEwMDAwMDAwMD47Cj4+ICsJbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+PiArCW5v
bi1yZW1vdmFibGU7Cj4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJs
LTAgPSA8JnNkbW1jMV9jbGsgJnNkbW1jMV9jbWQgJnNkbW1jMV9idXM0PjsKPj4gKwlyb2NrY2hp
cCxkZWZhdWx0LXNhbXBsZS1waGFzZSA9IDw5MD47Cj4+ICsJc2QtdWhzLXNkcjEwNDsKPj4gKwl2
bW1jLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICsJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4
PjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJ
I3NpemUtY2VsbHMgPSA8MD47Cj4gSSBkb24ndCB0aGluayB0aGUgKi1jZWxscyBhcmUgbmVlZGVk
IGhlcmUKPgpPaywgaSB3aWxsIGNoZWNrIGFuZCByZW1vdmUuCgpSZWdhcmRzCiAgICBUaW0KCj4K
PiBUaGFua3MKPiBIZWlrbwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
