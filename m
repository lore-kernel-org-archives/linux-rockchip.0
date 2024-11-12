Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58430D41D50
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 04:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cLHa4y1ysF3asAqkDMLZyFM2aKlnj2SysoC7ZOcmdiw=; b=LVhyDlg9JMOYaGTl1Gkl2my5yT
	Vrd0v6GFMgaCn+5Hs5tr4CAqVit8Tr85dYtcCKIfZe8oUrXnaHcefR3WGv/mU0SYSICFr6fJGrs+q
	+LNPzPE0yANmvEE1c3d+ATKPch/+w1xY7vgRHdkDjGLBT3cRmlbneIi9KTEU/qlXd8ux9V+83CPXB
	GvKPQMQN64L1Gdq334XMddLuHBtVCXwRKZZcAhVfxQguwIsqoibaV2OVITHgWzQDraDWHWYbPAcsS
	qKToNyL1W2LvOBOYEUVfrNQnEA7O/rZ7ja0a4JDxKYhK2grDh19iR39Q/1kdZgUezNSgMsLgLhQew
	dVe41ZwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAiko-00000002B5z-1Vma;
	Tue, 12 Nov 2024 04:43:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAij1-00000002Ava-0Fhk;
	Tue, 12 Nov 2024 04:42:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731386514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GmMLruJlFWW1LhBjQNO6wKWcTB7EUYEqGpqOf2cF01E=;
	b=d/9s8ota76JB/qXgmB068WFHiMOhUh9wAhv1nxyPVHrj97xZafR8vomFmhD1/bP0XYhxf3
	FkKJS6I4dvXI76TVmR9DlmoT4v+5CkajA28AVNjVFikNef/LvO8OM78sV4PxzdO3vaT6s9
	+u0B2XRClK96AHuJUNgfkkzCpcSL7kAAnG/yqYQC8P2QVyylUgdFGN8N0r+wh6vZugEPoh
	uOnENSsxfip+1xh/cdXm6U7baYCp20yiMcpwdXSbU3yQnNaje698yT9AwHdIYJWrksZwu5
	wJUJI/frx56dVgagLJ6bdPpJjAa5P/zngcZeNqaguau7u4t8ISayf3trcN/t/g==
Date: Tue, 12 Nov 2024 05:41:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@linux.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki
 <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
In-Reply-To: <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-3-tszucs@linux.com>
 <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se>
Message-ID: <260af427ae64d6f3b02a1579ee83eb3b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_204159_408233_C6BC3520 
X-CRM114-Status: GOOD (  17.61  )
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

SGVsbG8gSm9uYXMgYW5kIFRhbWFzLAoKT24gMjAyNC0xMS0xMSAyMDowNiwgSm9uYXMgS2FybG1h
biB3cm90ZToKPiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+PiBF
bmFibGUgU0RJTyBvbiBSYWR4YSBST0NLIDMgTW9kZWwgQiBNLjIgS2V5IEUuIEFkZCBhbGwgc3Vw
cG9ydGVkIFVIUy1JIAo+PiByYXRlcyBhbmQKPj4gZW5hYmxlIDIwMCBNSHogbWF4aW11bSBjbG9j
ay4gQWxzbywgYWxsb3cgaG9zdCB3YWtldXAgdmlhIFNESU8gSVJRLgo+PiAKPj4gU2lnbmVkLW9m
Zi1ieTogVGFtw6FzIFN6xbFjcyA8dHN6dWNzQGxpbnV4LmNvbT4KPj4gLS0tCj4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDggKysrKysrKy0KPj4g
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4gCj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0
cyAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+
PiBpbmRleCAyNDJhZjUzMzdjZGYuLmI3NTI3YmE0MThmNyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPj4gQEAgLTY4OCwxNCAr
Njg4LDIwIEBAICZzZG1tYzIgewo+PiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4+ICAJY2FwLXNkaW8t
aXJxOwo+PiAgCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPj4gKwltYXgtZnJlcXVlbmN5ID0gPDIw
MDAwMDAwMD47Cj4+ICAJbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+PiAgCW5vbi1yZW1v
dmFibGU7Cj4+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gIAlwaW5jdHJsLTAgPSA8
JnNkbW1jMm0wX2J1czQgJnNkbW1jMm0wX2NsayAmc2RtbWMybTBfY21kPjsKPj4gKwlzZC11aHMt
c2RyMTI7Cj4+ICsJc2QtdWhzLXNkcjI1Owo+PiArCXNkLXVocy1zZHI1MDsKPiAKPiBJIHRob3Vn
aHQgdGhhdCBsb3dlciBzcGVlZHMgd2FzIGltcGxpZWQgYnkgdWhzLXNkcjEwND8KCkxhc3QgdGlt
ZSBJIHdlbnQgdGhyb3VnaCB0aGUgTU1DIGRyaXZlcnMsIHRoZXkgd2VyZSBpbXBsaWVkLiAgSUlS
QywKc3VjaCBiYWNrd2FyZCBtb2RlIGNvbXBhdGliaWxpdHkgaXMgYWN0dWFsbHkgYSByZXF1aXJl
bWVudCBtYWRlIGJ5CnRoZSBNTUMgc3BlY2lmaWNhdGlvbi4KCj4+ICAJc2QtdWhzLXNkcjEwNDsK
Pj4gKwlzZC11aHMtZGRyNTA7Cj4+ICAJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zeXMyPjsKPj4g
IAl2cW1tYy1zdXBwbHkgPSA8JnZjY18xdjg+Owo+PiAtCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+
ICsJd2FrZXVwLXNvdXJjZTsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4gCj4gVGhpcyBzaG91bGQg
cHJvYmFibHkgYmUgZW5hYmxlZCB1c2luZyBhbiBkdC1vdmVybGF5LCB0aGVyZSBpcyBubwo+IFNE
SU8gZGV2aWNlIGVtYmVkZGVkIG9uIHRoZSBib2FyZCBhbmQgdGhlIHJlYXNvbiBJIGxlZnQgaXQg
ZGlzYWJsZWQKPiBpbiBvcmlnaW5hbCBib2FyZCBEVCBzdWJtaXNzaW9uLgoKSnVzdCB3ZW50IHRo
cm91Z2ggdGhlIFJPQ0sgM0Igc2NoZW1hdGljLCB2ZXJzaW9uIDEuNTEsIGFuZCBJIHRoaW5rCnRo
ZXJlIHNob3VsZCBiZSBubyBuZWVkIGZvciBhIHNlcGFyYXRlIG92ZXJsYXksIGJlY2F1c2Ugc2Rt
bWMyIGdvZXMKdG8gdGhlIE0uMiBzbG90IG9uIHRoZSBib2FyZCwgd2hpY2ggYW55IHVzZXIgY2Fu
IHBsdWcgYW4gTS4yIG1vZHVsZQppbnRvLCBhbmQgdGhlIFNESU8gaW50ZXJmYWNlIGlzIGtpbmQt
b2Ygc2VsZi1kaXNjb3ZlcmFibGUuCgpPZiBjb3Vyc2UsIGFsbCB0aGF0IHVubGVzcyB0aGVyZSBh
cmUgc29tZSBob3JyaWJseSBsb29raW5nIDopIGVycm9yCm1lc3NhZ2VzIGVtaXR0ZWQgdG8gdGhl
IGtlcm5lbCBsb2cgd2hlbiBub3RoaW5nIGlzIGFjdHVhbGx5IGZvdW5kLAppbiB3aGljaCBjYXNl
IHRoZSBTRElPL01NQyBkcmllcnMgc2hvdWxkIGJlIGZpeGVkIGZpcnN0LiAgQWxzbywgSSdtCm5v
dCBzdXJlIHdoYXQgZG8gd2UgZG8gd2l0aCB0aGUgcG9zc2libGUgU0RJTy1yZWxhdGVkIHBvd2Vy
IHRpbWluZwpyZXF1aXJlbWVudHM/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
