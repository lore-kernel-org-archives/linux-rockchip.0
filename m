Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D96BEF586D
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Feb 2026 10:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXO6s+SFSd8fVU8upCnzu78NjzFVCQMyBArZQ3DuEkI=; b=dx1C3txTtEpnES
	WJWldKVT43FlKX4DfLXaUgCcqHtYfnlVne4bTIHdgAnEwXWhu2iKucB98lz0iZfytZpH4Co7XtHOE
	1f39e+55FQQqeYHiVSRveENgOlpOdxAuDa3g4R5WV2/cN1PyDQFSKPzl0OxZKcXvdzQZ0wf3WiIIo
	et7klmcrVdI71d4eCXYQfdtE0SXnwRR2/GD1rDj9RCfBFZaYO8XEoXeT+sI2KBbf6kgsunwPfVYW0
	DOvdsuXhi0OOkyrTDVMb/elwj89VP2Kxr5LqSFfhzGBaKQU9Jp68cVow6ocQHCultXXPmNMwN/P8G
	0edN02GYvTWRcLZuLzBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrZLb-00000005Kgu-2Ylc;
	Sun, 15 Feb 2026 10:27:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrZLY-00000005KgG-20NG;
	Sun, 15 Feb 2026 10:27:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 86C6F60008;
	Sun, 15 Feb 2026 10:27:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7704C4CEF7;
	Sun, 15 Feb 2026 10:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771151243;
	bh=WW2sJsLiN33IDcNFD+yTcKRGRq/XHiHSNUnM6YBZQkM=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=VvIzAzBTIP/IqXKObvuFK84rwbWIKYqZg29R7/1yft27bGFFhjpHqokO00++7FFOj
	 J++OkHol5jj90i4mFg5i1YteTUMxz6+dJi6MVOYppmGYCYPxEp1bnh9qSBJLTwYreL
	 /DkIwHHLKHycscmSMG+XgnfzIr++svu1J6eVt2T0rZcsJeT16e+unUaKUb0ai5XzHa
	 HFXSSNDw9kAxDvnrRGT8nZo4Q79Ea4C7gcqHn0dDn/hfc7WXqgqeTnHA3SHLWAz70v
	 ml+LH5hEP8SolRQ+Hso+dklpeWl0lWIl50fEDfYv9lMumvFM05cfSbaunY78OXyesF
	 Al07vUaXHTNcw==
Message-ID: <738a4531-fec8-4ca7-98fd-a3971c666bd5@kernel.org>
Date: Sun, 15 Feb 2026 11:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] arm64: dts: add missing sram-supply to mali gpu
 nodes
To: =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260215100302.136719-1-work@onurozkan.dev>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260215100302.136719-1-work@onurozkan.dev>
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

T24gMTUvMDIvMjAyNiAxMTowMiwgT251ciDDlnprYW4gd3JvdGU6Cj4gU29tZSBhcm02NCBNYWxp
IEdQVSBEVCBub2RlcyBkZWZpbmUgbWFsaS1zdXBwbHkgYnV0Cj4gYXJlIG1pc3Npbmcgc3JhbS1z
dXBwbHkuCj4gCj4gQXMgZGlzY3Vzc2VkIGluIFsxXSwgc3JhbS1zdXBwbHkgc2hvdWxkIGJlIGV4
cGxpY2l0bHkKPiBkZWZpbmVkIGZvciBhbGwgcmVsZXZhbnQgY29tcGF0aWJsZXMuIElmIHRoZXJl
IGlzIG5vCj4gc2VwYXJhdGUgU1JBTSByYWlsLCBpdCBjYW4gcmVmZXJlbmNlIHRoZSBzYW1lIHJl
Z3VsYXRvcgo+IGFzIG1hbGktc3VwcGx5LgoKQnV0IGlzIHRoaXMgdGhlbiBhIHNyYW0tc3VwcGx5
PwoKRm9yIG1lIGl0IHNlZW1zIHlvdSBqdXN0IHdhbnQgdG8gZ2V0IHJpZCBvZiB0aGUgd2Fybmlu
ZyBmcm9tIFsxXSBhbmQKdGhhdCBpcyBub3QgY29ycmVjdCBwYXRjaC4gSSBkb24ndCBjYXJlIGFi
b3V0IHRoYXQgd2FybmluZyBhbmQgeW91CnNob3VsZCBub3QgYWRkIERUUyBjaGFuZ2VzIGp1c3Qg
dG8gcmVtb3ZlIHRoZSB3YXJuaW5nLgoKWW91IHNob3VsZCBhZGQgYSBDT1JSRUNUIHN1cHBseSwg
aWYgb25lIGV4aXN0LiBJZiBvbmUgZG9lcyBub3QgZXhpc3QsCnlvdSBjYW5ub3QgYWRkIGl0LgoK
UGxlYXNlIHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRvIExpbnV4IGNvZGluZyBzdHls
ZSAvIHN1Ym1pc3Npb24KcHJvY2VzcyAobmVpdGhlciB0b28gZWFybHkgbm9yIG92ZXIgdGhlIGxp
bWl0KToKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuNC1yYzEvc291cmNlL0Rv
Y3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w1OTcKCj4gCj4gVGhp
cyBjaGFuZ2UgYWRkcyB0aGUgbWlzc2luZyBzcmFtLXN1cHBseSBwcm9wZXJ0aWVzIHRvCj4gYWZm
ZWN0ZWQgRFQgZmlsZXMuIFRoaXMgYWxpZ25zIERUcyB3aXRoIGV4cGVjdGVkIHJlZ3VsYXRvcgo+
IG1vZGVsaW5nIGFuZCBhdm9pZHMgcmVseWluZyBvbiBpbXBsaWNpdCBmYWxsYmFjayBiZWhhdmlv
ci4KPiAKPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDIxMzE1NTkzNy42
YWY3NTc4NkBuaW1kYS8KClRoYXQncyBub3QgcmVhbGx5IHJlbGV2YW50Li4uIGFuZCBteSBmaXJz
dCBpbXByZXNzaW9uIHdhcyB0aGF0IHlvdSBtaXNzCmJpbmRpbmdzLiBZb3Ugc2hvdWxkIHJhdGhl
ciBleHBsYWluIHRoaXMgYWxsIGluIHRlcm1zIG9mIGhhcmR3YXJlIG9yCmJpbmRpbmdzIC0gZS5n
LiB0aGlzIHN1cHBseSBpcyBvciBpcyBub3QgaW4gdGhlIGJpbmRpbmdzIGFuZCB5b3UgYXJlCmFk
ZGluZyBpdCBiZWNhdXNlIGl0J3MgbWlzc2luZy4KCj4gCj4gU2lnbmVkLW9mZi1ieTogT251ciDD
lnprYW4gPHdvcmtAb251cm96a2FuLmRldj4KCgoKUGxlYXNlIHNwbGl0IHlvdXIgcGF0Y2ggcGVy
IFNvYyBzdWJzeXN0ZW1zLgoKCj4gLS0tCgouLi4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZXh5bm9zL2V4eW5vczU0MzMtdG0yLWNvbW1vbi5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9leHlub3MvZXh5bm9zNTQzMy10bTItY29tbW9uLmR0c2kKPiBpbmRleCBhMWZiMzU0
ZGVhOWYuLmFiYTdmNzMyNWQ4YyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4
eW5vcy9leHlub3M1NDMzLXRtMi1jb21tb24uZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZXh5bm9zL2V4eW5vczU0MzMtdG0yLWNvbW1vbi5kdHNpCj4gQEAgLTM1Niw2ICszNTYsNyBA
QCAmZHNpIHsKPiAgCj4gICZncHUgewo+ICAJbWFsaS1zdXBwbHkgPSA8JmJ1Y2s2X3JlZz47Cj4g
KwlzcmFtLXN1cHBseSA9IDwmYnVjazZfcmVnPjsKClRoZXJlIGlzIG5vIGRlZGljYXRlZCBzcmFt
IHN1cHBseS4gSXQgaXMgcHJvYmFibHkgcm91dGVkIGludGVybmFsbHksIHNvCkkgZG9uJ3QgdGhp
bmsgd2Ugc2hvdWxkIGV4cG9zZSBpdC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
