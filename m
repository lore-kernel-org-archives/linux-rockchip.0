Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B3CCF31B7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 11:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk4983zkLpKJZdKPUTh/zi19xCJpqIywkaEZhzNL5OA=; b=BsfNKg4pGJA+0t
	TdwAcl50naJYizctbMUhfxwhaQyLG3C6V74ziQkAH0GQjiInB8csgNSGl4v9m5nIlSwzIYbdjv5dn
	crxzNBGy0+c4tUeahbVP+BqJWRLPlrP5feoa3H7Ig+QeDK4iXCt5W/V3MxG6yfUAGfg6vTaHTDic6
	KdO7O1ix2sOCKou0PyjKf+9QciytWtsKDhAir0qJGG3pBVjRghxBLXCwE4ZlF4QwNxqV72C2Tdq4W
	0gK586wKNGhUX2+SRL+U+lPt0QwjjJJBWVOdHSabIeCnPV8vUmEQ9yv3eENk/9RQQd2xJBVQnMfy1
	dY1ZFa/4EYsS5+rBIpDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svxkD-00000005h0h-1DRa;
	Wed, 02 Oct 2024 11:42:13 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svxkA-00000005gzG-0yh9
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 11:42:12 +0000
X-QQ-mid: bizesmtpip4t1727869309txm89zf
X-QQ-Originating-IP: lcJUhGQnjjrPlRujqjKq3ff4LQz+G3cbCWJl0KvxHWw=
Received: from [IPV6:240f:10b:7440:1:3673:eb4e ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 02 Oct 2024 19:41:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7723755105126642011
Message-ID: <CEA5997869CA0A25+51c09b29-cf04-4410-992b-58c0580bfd3f@radxa.com>
Date: Wed, 2 Oct 2024 20:41:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for
 Radxa ROCK 5A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org
References: <20241001235046.1710-1-naoki@radxa.com>
 <d33dc43d-ac90-41af-94c0-e4dd1bc0654f@kwiboo.se> <863960074.0ifERbkFSE@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <863960074.0ifERbkFSE@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OXhWvHhbOVwtvv/LS6S+SDB0MCkHzB4cjKdr9Vt1+7spRctV4lM9cKN8
	wNC3q7DOmTSVDopT/IXbCwpvz9fhgTY0dRZ9SdzTudWcsM34ZxIeRFsP8a/BDzaoNMrZkSX
	pCBbUS9jfgTqTV2nd0gqGzYWjZBJzKK0tKI9uKgJUcDLOyoCTRxBVaBoTKwGwtFxC3+nrA2
	cjXfMqmu3AVUfZtl5t+0oAeUNblL1n3NC+1466evPaTVnrZ7m+fb6+mqrU7wjKTYq31HkaS
	pNDJ+g56E6/6po/VEIG9URs+7o4tobes/3EGBHR4Uu+h2MdpqL73wASBXY/l8Y6rWU5XJ1O
	H3HcJbPL7dM9S8MuiIJg2OGjqbjxlDxNsYu5VC+AO0nTwlBskKHo8rINuD0AmNzrhxqOVZO
	zaIaIT7N0p+WqZdHGOV9Dye6ju6KJ1L1X0l66odamyguW7x7zjPjSY1m0uGAaS3aEK1xVL9
	j1MKys6DV41B6xrSrQAbIeNnbY6KMqeksMA85I25JNyFTnV1ETAshVJuC+CnTUYMdBt9LwO
	PMf3FXdCxBPDzSWsr9i0rbaxly84hmklphdBCbNng+J0y2f+qWhMT3EiWJoSaSOYNeX4MQt
	mnsvzd9zVSmDfzR1te7EHtPM3sg84MhIua9Bas25wqiMQrHx/RP4JQIag4f0wHXNFSQJyZA
	koLn5mrBQ75EBV1fW14ppehR9BIeAOzn9cVvJmmEntQfDTu4Q9I1qOolo+won/ZjMSHe3q+
	H3PncUCU2mhRUQGNKV8FLWgZhBwg8wsPlFyaBJaZaLlyoaQX9Sk+Er0mdj3XrAa6nAMrAQM
	qcI11AUOvABTxzKD9JoRJ9p900APwkTaO3y5QAVw5A9MME680i767KvCTKh0nP8A6/XVuMW
	d6A6R6dY0IM=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_044210_743948_2F3575B0 
X-CRM114-Status: GOOD (  13.42  )
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

aGksCgpPbiAxMC8yLzI0IDIwOjIxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29j
aCwgMi4gT2t0b2JlciAyMDI0LCAxMjo1MDoyOSBDRVNUIHNjaHJpZWIgSm9uYXMgS2FybG1hbjoK
Pj4gSGksCj4+Cj4+IE9uIDIwMjQtMTAtMDIgMDE6NTAsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+
PiBmb3IgcGNpZTJ4MWwyLCBvbmx5IHBjaWUyMHgxXzJfcGVyc3RuX20wIGlzIHJlcXVpcmVkLCBh
bmQgaXRzIGZ1bmN0aW9uCj4+PiBuZWVkcyB0byBiZSBHUElPIHRvIGF2b2lkIGZyZWV6ZSBhdCAi
cGNpIGVudW0iIHdpdGhvdXQgUENJZSBkZXZpY2Ugb24KPj4+IHUtYm9vdC4KPj4+Cj4+PiBjaGFu
Z2UgcGluY3RybCBkZWZpbml0aW9ucyBmb3IgcGNpZTJ4MWwyLiBubyBmdW5jdGlvbmFsIGNoYW5n
ZSBpcwo+Pj4gaW50ZW5kZWQgb24gTGludXgga2VybmVsLgo+Pgo+PiBBZnRlciB0aGUgc3BsaXQg
YW5kIGFkZGl0aW9uIG9mIHBjaWUyX3Jlc2V0IEkgdGhpbmsgdGhpcyBwYXRjaCBpcyBubwo+PiBs
b25nZXIgbmVlZGVkPyBUaGUgaXNzdWUgdGhpcyBwYXRjaCB0cmllZCB0byBmaXggd2FzIGFscmVh
ZHkKPj4gZml4ZWQvY2hhbmdlZCBpbiAiYXJtNjQ6IGR0czogcm9ja2NoaXA6IFNwbGl0IHVwIFJL
MzU4OCdzIFBDSWUgcGluY3RybHMiLgo+Pgo+PiBMb29rcyBsaWtlIHRoaXMgbm93IGp1c3QgcmVu
YW1lIHBjaWUyX3Jlc2V0IHRvIHBjaWUyMHgxXzJfcGVyc3RuX20wPwo+IAo+IGFuZCByZW1vdmVz
IHRoZSBvdGhlciBwaW5jdHJsIHN0YXRlcyBjbGtyZXFuIGFuZCB3YWtlbiAuCj4gCj4gSW4gYSBw
cmV2aW91cyB2ZXJzaW9uIHRoZXkgbWVudGlvbmVkIHRoYXQgdGhpcyBzb21laG93IGFmZmVjdHMg
dS1ib290Lgo+IAo+IEJ1dCB5b3UncmUgcmlnaHQsIHRoYXQgcmVuYW1pbmcgb2YgdGhlIHBpbmN0
cmwgcmVzZXQgZW50cnkgc2hvdWxkCj4gZGVmaW5pdGx5IG5vdCBiZSBpbiB0aGVyZS4KCkkgd29u
ZGVyIHdoZXJlICJwY2llMl9yZXNldCIgY29tZXMgZnJvbS4KaW4gc2NoZW1hdGljLCBvbmx5ICJw
Y2llMjB4MV8yX3BlcnN0bl9tMCIgaXMgdXNlZC4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkg
TmFva2kKUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4+PiBTaWduZWQtb2Zm
LWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+PiAtLS0KPj4+IENoYW5nZWQg
aW4gdjM6Cj4+PiAtIHJlYmFzZSBvbiBuZXh0L21hc3Rlcgo+Pj4gQ2hhbmdlZCBpbiB2MjoKPj4+
IC0gcmV3b3JkIGNvbW1pdCBtZXNzYWdlCj4+PiAtLS0KPj4+ICAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzIHwgMTAgKysrKystLS0tLQo+Pj4gICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPj4+IGlu
ZGV4IDg3ZmNlOGQ5YTk2NC4uODQxYWM5YTMwNjI4IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPj4+IEBAIC0zMTAsNyAr
MzEwLDcgQEAgcmdtaWlfcGh5MTogZXRoZXJuZXQtcGh5QDEgewo+Pj4gICB9Owo+Pj4gICAKPj4+
ICAgJnBjaWUyeDFsMiB7Cj4+PiAtCXBpbmN0cmwtMCA9IDwmcGNpZTJfcmVzZXQ+LCA8JnBjaWUy
MHgxbTBfY2xrcmVxbj4sIDwmcGNpZTIweDFtMF93YWtlbj47Cj4+PiArCXBpbmN0cmwtMCA9IDwm
cGNpZTIweDFfMl9wZXJzdG5fbTA+Owo+Pj4gICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
Pj4+ICAgCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QRDEgR1BJT19BQ1RJVkVfSElHSD47Cj4+
PiAgIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M193Zj47Cj4+PiBAQCAtMzI1LDEyICszMjUs
MTIgQEAgaW9fbGVkOiBpby1sZWQgewo+Pj4gICAJfTsKPj4+ICAgCj4+PiAgIAlwY2llIHsKPj4+
IC0JCXBvd19lbjogcG93LWVuIHsKPj4+IC0JCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEM1IFJL
X0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+Pj4gKwkJcGNpZTIweDFfMl9wZXJzdG5fbTA6
IHBjaWUyMHgxLTItcGVyc3RuLW0wIHsKPj4+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEQx
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+Pj4gICAJCX07Cj4+PiAgIAo+Pj4gLQkJ
cGNpZTJfcmVzZXQ6IHBjaWUyLXJlc2V0IHsKPj4+IC0JCQlyb2NrY2hpcCxwaW5zID0gPDMgUktf
UEQxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+Pj4gKwkJcG93X2VuOiBwb3ctZW4g
ewo+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQzUgUktfRlVOQ19HUElPICZwY2ZnX3B1
bGxfbm9uZT47Cj4+PiAgIAkJfTsKPj4+ICAgCX07Cj4+PiAgIAo+Pgo+Pgo+IAo+IAo+IAo+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
