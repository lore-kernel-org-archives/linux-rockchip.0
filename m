Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2284C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 13:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZkXzPsnnkVHuvEs8Wf+xAr3NBPXMKuj17oaCbPl4A0=; b=Vcc7uJxXTpfUSY
	+92ZrU6WoaK2YdRkp6qvYxyPoYKKxksHkgEBvAMECu5YSJ44CQYa9v0syWotD9AR2gC6tVZZbdygL
	1vXZ8vMbaeuMJNLisDF2nZ3+w+LPjqdtF+XxxMy3JS2yzf/G/sTdDaM53aQ79zslDMb5Mq01ocwyl
	pUzTJJu4dwBzFObwie4DN/0Q0aaIatSPisU03l/TWRUKKV7HtuhRwH7vWwpn2ng7GA5rsPfJ3JyZP
	eXuN24wG43LZeIhY3KpdN7XjN5Yi2AAUHNoraYez25F8nZ7DLAbmgQdsPfblmk6UODgjEqQXWzfTJ
	iZ3gsYmSDGKxK/gJKsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdPF-0000000CDKH-3TZv;
	Tue, 14 Jul 2026 13:42:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdPE-0000000CDJe-1tFH;
	Tue, 14 Jul 2026 13:42:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D506141938;
	Tue, 14 Jul 2026 13:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0771F000E9;
	Tue, 14 Jul 2026 13:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784036559;
	bh=9l+uIwgVzw+NvhDfJ8lWxnAaFoicUYHTG0ov4vjJ6kY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dlCqwQt12yYyznBQrQVc3d9oS1O7+Ugi99/DCdjmcONd2lnk2CgJxRH74AgxxmmXq
	 y1BiBUuJw38xvj90zyEag0t4peCF7YzuL+s9cU6fMeH6J2yPCV049V/qwB4yXl5Ow5
	 kQTvg8u7rHO9lL5UEhDyn7ddUfwgsi7lzX1YH9E+ponCgaK+WA4n3fFpCLFMUbPVtS
	 5at9JC4D2NYfRCWbuuSLiVxeJONbbzjdI8oxD8kjiaVEPZrKDihM99sqYRdu/YkTKG
	 AyFv+3RJ9q62OeDJDPmvznYEkBUQZyPv40OBrADYWhR95eE952hivxioZOWXat6sSV
	 RlazhbAykhfVQ==
Date: Tue, 14 Jul 2026 19:12:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC
 configuration
Message-ID: <alY8y15JA0T5hoaY@vaman>
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
 <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
 <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com>
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

T24gMTQtMDctMjYsIDE2OjU4LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBPbiBUdWUsIE1heSAx
OSwgMjAyNiBhdCAyOjQ44oCvUE0gVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4gd3JvdGU6
Cj4gPgo+ID4KPiA+IE9uIE1vbiwgMjcgQXByIDIwMjYgMDg6NTc6MTMgKzA4MDAsIFNoYXduIExp
biB3cm90ZToKPiA+ID4gVGhlIFBDSWUgU1NDIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBSSzM1ODgg
YW5kIFJLMzU3NiBTb0NzIHJlcXVpcmVkCj4gPiA+IGFkZGl0aW9uYWwgdHVuaW5nIHdoaWNoIGlz
IG1pc3NpbmcuIFdoZW4gYWRkaW5nIHRoZXNlIHNhbWUgU1NDCj4gPiA+IGNvbmZpZ3VyYXRpb25z
IGZvciBib3RoIG9mIHRoZXNlIHR3byBTb0NzLCBhcyB3ZWxsIGFzIHVwY29taW5nCj4gPiA+IHBs
YXRmb3JtcywgaXQncyBvYnZpb3VzIHRoZSBTU0Mgc2V0dXAgY29kZSB3YXMgbGFyZ2VseSBkdXBs
aWNhdGVkCj4gPiA+IGFjcm9zcyB0aGUgcGxhdGZvcm0tc3BlY2lmaWMgY29uZmlndXJhdGlvbiBm
dW5jdGlvbnMuIFRoaXMgYmVjb21lcwo+ID4gPiBoYXJkZXIgdG8gbWFpbnRhaW4gYXMgbW9yZSBw
bGF0Zm9ybXMgYXJlIGFkZGVkLgo+ID4gPgo+ID4gPiBbLi4uXQo+ID4KPiA+IEFwcGxpZWQsIHRo
YW5rcyEKPiA+Cj4gPiBbMS8xXSBwaHk6IHJvY2tjaGlwOiBuYW5lbmctY29tYnBoeTogQ29uc29s
aWRhdGUgU1NDIGNvbmZpZ3VyYXRpb24KPiA+ICAgICAgIGNvbW1pdDogMGIzMWYyOTc1NTdmZmYw
OTQxNzY5ZTgyNTcxOTgxNTFhMGZiZThiZgo+IAo+IFRoaXMgY29tbWl0IGJyZWFrcyBVU0IzIG9w
ZXJhdGlvbiBvbiBSSzM1NzYgKGF0IGxlYXN0IGluIGhvc3QgbW9kZSksCj4gY2F1c2luZyBhbiBl
bmRsZXNzIGZsb29kIG9mIG1lc3NhZ2VzIGxpa2UgdGhpcyBldmVyeSBzZWNvbmQgaW4gZG1lc2c6
Cj4gCj4gdXNiIHVzYjItcG9ydDE6IENhbm5vdCBlbmFibGUuIE1heWJlIHRoZSBVU0IgY2FibGUg
aXMgYmFkPwo+IAo+IFVTQiAyLjAgcGFydCBlbnVtZXJhdGVzLCBidXQgVVNCIDMuMCBkb2Vzbid0
LiBUZXN0ZWQgb24gdHdvIGRpZmZlcmVudAo+IGRldmljZXMgaGF2aW5nIGEgQ29yZUNoaXBzIFNM
NjM0MSBVU0IgMi4wL1VTQiAzLjAgaHViIG9uYm9hcmQKPiBjb25uZWN0ZWQgdG8gJnVzYl9kcmQx
X2R3YzMsIGJpc2VjdGVkIHRvIHRoaXMgY29tbWl0Lgo+IAo+IEhhcyB0aGlzIGJlZW4gcmVwb3J0
ZWQgeWV0LCBvciBzaGFsbCBJIGludmVzdGlnYXRlIGZ1cnRoZXIgd2hpY2ggcGFydAo+IG9mIHRo
ZSBwYXRjaCBjYXVzZXMgdGhlIGJyZWFrYWdlPwoKRmlyc3QgSSBoZWFyZCwgd291bGQgYmUgZ29v
ZCB0byBpbnZlc3RpZ2F0ZS4KSSBjYW4gcmV2ZXJ0IGlmIHdlIGRvbnQgZmluZCBhIGZpeCBzb29u
Li4uCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkKPiAtLS0KPiAwYjMxZjI5NzU1N2ZmZjA5
NDE3NjllODI1NzE5ODE1MWEwZmJlOGJmIGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0Cj4gY29tbWl0
IDBiMzFmMjk3NTU3ZmZmMDk0MTc2OWU4MjU3MTk4MTUxYTBmYmU4YmYKPiBBdXRob3I6IFNoYXdu
IExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IERhdGU6ICAgTW9uIEFwciAyNyAwODo1
NzoxMyAyMDI2ICswODAwCj4gCj4gICAgIHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBD
b25zb2xpZGF0ZSBTU0MgY29uZmlndXJhdGlvbgo+IAo+ICAgICBUaGUgUENJZSBTU0MgY29uZmln
dXJhdGlvbiBmb3IgdGhlIFJLMzU4OCBhbmQgUkszNTc2IFNvQ3MgcmVxdWlyZWQKPiAgICAgYWRk
aXRpb25hbCB0dW5pbmcgd2hpY2ggaXMgbWlzc2luZy4gV2hlbiBhZGRpbmcgdGhlc2Ugc2FtZSBT
U0MKPiAgICAgY29uZmlndXJhdGlvbnMgZm9yIGJvdGggb2YgdGhlc2UgdHdvIFNvQ3MsIGFzIHdl
bGwgYXMgdXBjb21pbmcKPiAgICAgcGxhdGZvcm1zLCBpdCdzIG9idmlvdXMgdGhlIFNTQyBzZXR1
cCBjb2RlIHdhcyBsYXJnZWx5IGR1cGxpY2F0ZWQKPiAgICAgYWNyb3NzIHRoZSBwbGF0Zm9ybS1z
cGVjaWZpYyBjb25maWd1cmF0aW9uIGZ1bmN0aW9ucy4gVGhpcyBiZWNvbWVzCj4gICAgIGhhcmRl
ciB0byBtYWludGFpbiBhcyBtb3JlIHBsYXRmb3JtcyBhcmUgYWRkZWQuCj4gCj4gICAgIFNvIGV4
dHJhY3QgdGhlIGNvbW1vbiBTU0MgbG9naWMgaW50byBhIHNoYXJlZCBoZWxwZXIgZnVuY3Rpb24s
Cj4gICAgIHJrX2NvbWJwaHlfY29tbW9uX2NmZ19zc2MoKS4gVGhpcyBjbGVhbnMgdXAgdGhlIHBl
ci1wbGF0Zm9ybSBkcml2ZXJzCj4gICAgIGFuZCBjZW50cmFsaXplcyB0aGUgc3RhbmRhcmQgY29u
ZmlndXJhdGlvbiBhcyBwb3NzaWJsZS4KPiAKPiAgICAgUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ry
b25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+ICAgICBSZXZpZXdlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAgICAgU2lnbmVkLW9mZi1ieTogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gICAgIExpbms6IGh0dHBzOi8vcGF0Y2gubXNn
aWQubGluay8xNzc3MjUxNDMzLTExMDQ2Ni0xLWdpdC1zZW5kLWVtYWlsLXNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbQo+ICAgICBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwu
b3JnPgo+IAo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJw
aHkuYyB8IDE3Mwo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NzMgaW5zZXJ0aW9ucygrKSwgMTAwIGRlbGV0aW9ucygtKQoKLS0gCn5WaW5vZAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
