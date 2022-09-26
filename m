Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F553C32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 04:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g07eMDfs0CBlLm+ULzjLp1NVKPwR/UgJy5P2d7d9hO8=; b=dbNudIyL2jPvx8
	9BateZjJW+xV/fTB8cSImm89JzymG9kwQr0srU/UMow0jqfd4I1zYauWUeyTxxhjmoMY4fKuMjUPj
	Kqurjj1HtawoIkuRL2edBIfqMbuKSuPl8hf/SkPfzRH9E+3GUAkKyPTHfJ58jTWzGOhM7xRUCkHJn
	3KRIAjdtnCco9Y788DcaEiulGFw5r2hsUnmmo1/trZ9a+rAjsRlwAdirkAMsWyNu7VR19TxDRHW6Y
	RR4NxrBUElOoz9xbf74ISMe81ooqixSX94S5+cPTMZmXaLpQVqlkSs3PX1AuXg39UrtFVllbfa8Gj
	ku17kr0IXjiCu3cMxEgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocfvb-001iJQ-PA; Mon, 26 Sep 2022 04:41:11 +0000
Received: from wp530.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8234::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocfvZ-001iBg-CK
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 04:41:11 +0000
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1ocfvL-00013U-Ev; Mon, 26 Sep 2022 06:40:55 +0200
Message-ID: <10c29d1e-4048-acb8-891e-dcd5103ab355@leemhuis.info>
Date: Mon, 26 Sep 2022 06:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: v6.0-rc6 - arm64 / rock960 : kernel panic #forregzbot
Content-Language: en-US, de-DE
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: "regressions@lists.linux.dev" <regressions@lists.linux.dev>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <4f398e4c-973b-7843-2f75-27324d109277@linaro.org>
 <646ff571-81b1-346d-97ba-3e85e6805af1@leemhuis.info>
In-Reply-To: <646ff571-81b1-346d-97ba-3e85e6805af1@leemhuis.info>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1664167269;c8282b93;
X-HE-SMSGID: 1ocfvL-00013U-Ev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_214109_596807_DAF23A58 
X-CRM114-Status: GOOD (  15.77  )
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

T24gMjUuMDkuMjIgMDk6MjEsIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+IFRXSU1DOiB0aGlz
IG1haWwgaXMgcHJpbWFyaWx5IHNlbmQgZm9yIGRvY3VtZW50YXRpb24gcHVycG9zZXMgYW5kIGZv
cgo+IHJlZ3pib3QsIG15IExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNraW5nIGJvdC4gVGhl
c2UgbWFpbHMgdXN1YWxseQo+IGNvbnRhaW4gJyNmb3JyZWd6Ym90JyBpbiB0aGUgc3ViamVjdCwg
dG8gbWFrZSB0aGVtIGVhc3kgdG8gc3BvdCBhbmQgZmlsdGVyLgo+IAo+IFtUTERSOiBJJ20gYWRk
aW5nIHRoaXMgcmVncmVzc2lvbiByZXBvcnQgdG8gdGhlIGxpc3Qgb2YgdHJhY2tlZAo+IHJlZ3Jl
c3Npb25zOyBhbGwgdGV4dCBmcm9tIG1lIHlvdSBmaW5kIGJlbG93IGlzIGJhc2VkIG9uIGEgZmV3
IHRlbXBsYXRlcwo+IHBhcmFncmFwaHMgeW91IG1pZ2h0IGhhdmUgZW5jb3VudGVyZWQgYWxyZWFk
eSBhbHJlYWR5IGluIHNpbWlsYXIgZm9ybS5dCj4gCj4gSGksIHRoaXMgaXMgeW91ciBMaW51eCBr
ZXJuZWwgcmVncmVzc2lvbiB0cmFja2VyLgo+IAo+IE9uIDI0LjA5LjIyIDE5OjQzLCBEYW5pZWwg
TGV6Y2FubyB3cm90ZToKPj4gSGksCj4+Cj4+IHRoZXJlIGlzIGEga2VybmVsIHBhbmljIG9uIGEg
cm9jazk2MCBib2FyZDoKPj4KPj4gQWZ0ZXIgZ2l0IGJpc2VjdGluZywgSSBoYXZlOgo+Pgo+PiBj
b21taXQgMTRmYWNiYzE4NzFhZTE1NDA0NjY2NzQ3YjUzMTljMDhlMDRiODc1YQo+PiBNZXJnZTog
ZjVjOTdkYTgwMzdiIDMyMzQ2NDkxZGRmMgo+PiBBdXRob3I6IEdyZWcgS3JvYWgtSGFydG1hbiA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4+IERhdGU6wqDCoCBNb24gSnVsIDExIDA4OjMy
OjU4IDIwMjIgKzAyMDAKPj4KPj4gwqDCoMKgIE1lcmdlIDUuMTktcmM2IGludG8gY2hhci1taXNj
LW5leHQKPj4KPj4gwqDCoMKgIFdlIG5lZWQgdGhlIG1pc2MgZHJpdmVyIGZpeGVzIGluIGhlcmUg
YXMgd2VsbC4KPj4KPj4gwqDCoMKgIFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4+Cj4+IEFueSBjbHVlPwo+IAo+IFRoYW5rcyBm
b3IgdGhlIHJlcG9ydC4gVG8gYmUgc3VyZSBiZWxvdyBpc3N1ZSBkb2Vzbid0IGZhbGwgdGhyb3Vn
aCB0aGUKPiBjcmFja3MgdW5ub3RpY2VkLCBJJ20gYWRkaW5nIGl0IHRvIHJlZ3pib3QsIG15IExp
bnV4IGtlcm5lbCByZWdyZXNzaW9uCj4gdHJhY2tpbmcgYm90Ogo+IAo+ICNyZWd6Ym90IF5pbnRy
b2R1Y2VkIDE0ZmFjYmMxODcxYWUxNTQwNDYKClBlcgpodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvQ0FNZFl6WXJxVlNObU9BU0RVWEswTWFKVnk1NmdtUmtId2ViOUJzN0o3Nk80SFpuMk5RQG1h
aWwuZ21haWwuY29tLwphbmQgaXRzIHBhcmVudDoKCiNyZWd6Ym90IGludHJvZHVjZWQ6IDhkYzYw
ZjhkYTIyZmRiCiNyZWd6Ym90IGZpeGVkLWJ5OiBmMzQwZWQ4NjY0YTU1YTQKCkNpYW8sIFRob3Jz
dGVuICh3ZWFyaW5nIGhpcyAndGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlcicg
aGF0KQoKUC5TLjogQXMgdGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlciBJIGRl
YWwgd2l0aCBhIGxvdCBvZgpyZXBvcnRzIGFuZCBzb21ldGltZXMgbWlzcyBzb21ldGhpbmcgaW1w
b3J0YW50IHdoZW4gd3JpdGluZyBtYWlscyBsaWtlCnRoaXMuIElmIHRoYXQncyB0aGUgY2FzZSBo
ZXJlLCBkb24ndCBoZXNpdGF0ZSB0byB0ZWxsIG1lIGluIGEgcHVibGljCnJlcGx5LCBpdCdzIGlu
IGV2ZXJ5b25lJ3MgaW50ZXJlc3QgdG8gc2V0IHRoZSBwdWJsaWMgcmVjb3JkIHN0cmFpZ2h0LgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
