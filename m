Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8185C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6njNZyyfFvxFyy+d0FbTfr66LJbCgFFomSwwx4T3Jmg=; b=ySoRtMCNv/0/z2
	Zyv7YETLbGAfbUi126Xgui4AbgBcJuxauGwTVQCZZSM/G1MrW8q1pFud23lo2rjCs/WHvoXZ8jc1S
	qEUIFLaiaXcSH3k5ofUazXrnsd1d/UHlAYVFoxwNoqUESC98D+Mv2x3bqtu9urAvypNvsxQhEStC/
	hmoztRa5ZL28PRkDx1sZparQIOWPAalZ2CFKuJQFlCdlo+bkTqOOvEKOGG/+dJfuJJWpula8m50Y3
	bIG98Umuq8dCYYFH+MQ7EF6uyZZEftQKIdN3g7D+Rkrui4+kXo57suTUfpjiZNxdgII8efHbl+12h
	FDOix83Csj7Sat4YiWPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIHAB-00000004Jso-0jmB;
	Sat, 15 Jun 2024 00:20:59 +0000
Received: from shout11.mail.de ([2001:868:100:600::f153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIHA7-00000004Jrq-0FFo;
	Sat, 15 Jun 2024 00:20:56 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout11.mail.de (Postfix) with ESMTPS id 75BDB24192D;
	Sat, 15 Jun 2024 02:20:49 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout02.mail.de (Postfix) with ESMTP id 44D23240E5A;
	Sat, 15 Jun 2024 02:20:49 +0200 (CEST)
Received: from smtp01.mail.de (smtp03.bt.mail.de [10.0.121.213])
	by postfix01.mail.de (Postfix) with ESMTP id 20F57801BF;
	Sat, 15 Jun 2024 02:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718410849;
	bh=9+3UpvFvUL6e3xI+TeczZuFjYUk6rVLdYYrAycTppY0=;
	h=Message-ID:Date:Subject:To:Cc:From:From:To:CC:Subject:Reply-To;
	b=aAv9BwjLc6YnOm03QTpsTkVlUq3BMAOoGgdXP3HKvp1IRLkOcKkwlCTSeWgDbCRuQ
	 pnWaKo8c6CPf+719BzaBGrWGdeMIPEvnZ8x+94F1EUoNE6QaJouOBdDIR8x+Im1gdJ
	 WvwefICL+lo9G1xWnHkDahR+4rOAenxZEWxgabjyFAwkQVgFgmoE74nOnSjLy3eqst
	 PRuwo9E98nGz2xYm74Qi6k6b+u9yp/u+wZR042hBqHD7wkvxxm2NoJd+Ez49ugiQdc
	 lHnKcoL0M/4VnUCb8phTtoemWuaqFEKwzzoU5pgebQjD8WU+lDSMUmD5Z5eGosszAn
	 nnmxrvMhNG9rw==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id D551D240A6F;
	Sat, 15 Jun 2024 02:20:44 +0200 (CEST)
Message-ID: <1c702815-3f55-4f62-a743-2463f3141650@mail.de>
Date: Sat, 15 Jun 2024 02:20:43 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: Tim Surber <me@timsurber.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Space Meyer <me@the-space.agency>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240609222428.134977-1-seb-dev@mail.de>
 <20240609222428.134977-3-seb-dev@mail.de>
 <bea6657a-62bb-46a3-93be-4b8b4c68aed0@timsurber.de>
From: Sebastian Kropatsch <seb-dev@mail.de>
In-Reply-To: <bea6657a-62bb-46a3-93be-4b8b4c68aed0@timsurber.de>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 3277
X-purgate-ID: 154282::1718410849-F3E201F9-4086A72E/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_172055_311341_65ED0563 
X-CRM114-Status: GOOD (  16.22  )
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

SGkgVGltLAoKQW0gMTQuMDYuMjAyNCB1bSAwNDowMCBzY2hyaWViIFRpbSBTdXJiZXI6Cj4gSGkg
U2ViYXN0aWFuLAo+IAo+IEkgcHJvcG9zZSB0aGUgYWRkaXRpb24gb2YgInB3bS1iZWVwZXIiIGFu
ZCAiZ3Bpby1pci1yZWNlaXZlciIgdG8gdGhlIAo+IGRldmljZSB0cmVlLCBzaW5jZSB0aGV5IGFy
ZSBwZXJtYW5lbnRseSBtb3VudGVkIG9uIHRoZSBiYXNlYm9hcmQuCgpDYW4geW91IHJlY29tbWVu
ZCBhIGdvb2Qgd2F5IHRvIHRlc3QgdGhlIElSIHJlY2VpdmVyPyBJIHRyaWVkIGZvcgphIHdoaWxl
IHdpdGggZXZ0ZXN0IGJ1dCBjb3VsZCBub3Qgc2VlIGFueSBvdXRwdXQ6CgogICAgZXZ0ZXN0IC9k
ZXYvaW5wdXQvZXZlbnQyCiAgICBJbnB1dCBkcml2ZXIgdmVyc2lvbiBpcyAxLjAuMQogICAgSW5w
dXQgZGV2aWNlIElEOiBidXMgMHgxOSB2ZW5kb3IgMHgxIHByb2R1Y3QgMHgxIHZlcnNpb24gMHgx
MDAKICAgIElucHV0IGRldmljZSBuYW1lOiAiZ3Bpb19pcl9yZWN2IgogICAgU3VwcG9ydGVkIGV2
ZW50czoKICAgICAgRXZlbnQgdHlwZSAwIChFVl9TWU4pCiAgICAgIEV2ZW50IHR5cGUgMSAoRVZf
S0VZKQogICAgICAgIEV2ZW50IGNvZGUgMTUyIChLRVlfU0NSRUVOTE9DSykKICAgICAgRXZlbnQg
dHlwZSAyIChFVl9SRUwpCiAgICAgICAgRXZlbnQgY29kZSAwIChSRUxfWCkKICAgICAgICBFdmVu
dCBjb2RlIDEgKFJFTF9ZKQogICAgICBFdmVudCB0eXBlIDQgKEVWX01TQykKICAgICAgICBFdmVu
dCBjb2RlIDQgKE1TQ19TQ0FOKQogICAgS2V5IHJlcGVhdCBoYW5kbGluZzoKICAgICAgUmVwZWF0
IHR5cGUgMjAgKEVWX1JFUCkKICAgICAgICBSZXBlYXQgY29kZSAwIChSRVBfREVMQVkpCiAgICAg
ICAgICBWYWx1ZSAgICA1MDAKICAgICAgICBSZXBlYXQgY29kZSAxIChSRVBfUEVSSU9EKQogICAg
ICAgICAgVmFsdWUgICAgMTI1CiAgICBQcm9wZXJ0aWVzOgogICAgICBQcm9wZXJ0eSB0eXBlIDUg
KElOUFVUX1BST1BfUE9JTlRJTkdfU1RJQ0spCiAgICBUZXN0aW5nIC4uLiAoaW50ZXJydXB0IHRv
IGV4aXQpCgpJIG9ubHkgaGF2ZSBvbmUgVFYgcmVtb3RlIHRvIHRlc3QsIHNvIEknbSBub3QgZXZl
biBzdXJlIHRoYXQgdGhpcwppcyBjb21wYXRpYmxlLCBJIGhhdmVuJ3QgdG91Y2hlZCBhbnl0aGlu
ZyBJUi1yZWxhdGVkIGJlZm9yZS4KCkNoZWVycywKU2ViYXN0aWFuCgo+IE9uIDEwLjA2LjIwMjQg
MDA6MjAsIFNlYmFzdGlhbiBLcm9wYXRzY2ggd3JvdGU6Cj4+IFRoZSBDTTM1ODggTkFTIGJ5IEZy
aWVuZGx5RWxlYyBwYWlycyB0aGUgQ00zNTg4IGNvbXB1dGUgbW9kdWxlLCBiYXNlZCBvbgo+PiB0
aGUgUm9ja2NoaXAgUkszNTg4IFNvQywgd2l0aCB0aGUgQ00zNTg4IE5BUyBLaXQgY2FycmllciBi
b2FyZC4KPj4gVG8gcmVmbGVjdCB0aGUgaGFyZHdhcmUgc2V0dXAsIGFkZCBkZXZpY2UgdHJlZSBz
b3VyY2VzIGZvciB0aGUgU29NIGFuZAo+PiB0aGUgTkFTIGRhdWdodGVyIGJvYXJkIGFzIHNlcGFy
YXRlIGZpbGVzLgo+Pgo+PiBIYXJkd2FyZSBmZWF0dXJlczoKPj4gwqDCoMKgwqAgLSBSb2NrY2hp
cCBSSzM1ODggU29DCj4+IMKgwqDCoMKgIC0gNEdCLzhHQi8xNkdCIExQRERSNHggUkFNCj4+IMKg
wqDCoMKgIC0gNjRHQiBlTU1DCj4+IMKgwqDCoMKgIC0gTWljcm9TRCBjYXJkIHNsb3QKPj4gwqDC
oMKgwqAgLSAxeCBSVEw4MTI1QiAyLjVHIEV0aGVybmV0Cj4+IMKgwqDCoMKgIC0gNHggTS4yIE0t
S2V5IHdpdGggUENJZSAzLjAgeDEgKHZpYSBiaWZ1cmNhdGlvbikgZm9yIE5WTWUgU1NEcwo+PiDC
oMKgwqDCoCAtIDJ4IFVTQiAzLjAgKFVTQiAzLjEgR2VuMSkgVHlwZS1BLCAxeCBVU0IgMi4wIFR5
cGUtQQo+PiDCoMKgwqDCoCAtIDF4IFVTQiAzLjAgVHlwZS1DIHdpdGggRFAgQWx0TW9kZSBzdXBw
b3J0Cj4+IMKgwqDCoMKgIC0gMnggSERNSSAyLjEgb3V0LCAxeCBIRE1JIGluCj4+IMKgwqDCoMKg
IC0gTUlQSS1DU0kgQ29ubmVjdG9yLCBNSVBJLURTSSBDb25uZWN0b3IKPj4gwqDCoMKgwqAgLSA0
MC1waW4gR1BJTyBoZWFkZXIKPj4gwqDCoMKgwqAgLSA0IGJ1dHRvbnM6IHBvd2VyLCByZXNldCwg
cmVjb3ZlcnksIE1BU0ssIHVzZXIgYnV0dG9uCj4+IMKgwqDCoMKgIC0gMy41bW0gSGVhZHBob25l
IG91dCwgMi4wbW0gUEgtMkEgTWljIGluCj4+IMKgwqDCoMKgIC0gNVYgRmFuIGNvbm5lY3Rvciwg
UFdNIGJ1enplciwgSVIgcmVjZWl2ZXIsIFJUQyBiYXR0ZXJ5IGNvbm5lY3Rvcgo+Pgo+PiBQQ0ll
IGJpZnVyY2F0aW9uIGlzIHVzZWQgdG8gaGFuZGxlIGFsbCBmb3VyIE0uMiBzb2NrZXRzIGF0IFBD
SWUgMy4wIHgxCj4+IHNwZWVkLiBEYXRhIGxhbmUgbWFwcGluZyBpbiB0aGUgRFQgaXMgZG9uZSBs
aWtlIGRlc2NyaWJlZCBpbiBjb21taXQKPj4gZjgwMjBkZmIzMTFkICgicGh5OiByb2NrY2hpcC1z
bnBzLXBjaWUzOiBmaXggYmlmdXJjYXRpb24gb24gcmszNTg4IikuCj4+Cj4+IFRoaXMgZGV2aWNl
IHRyZWUgaW5jbHVkZXMgc3VwcG9ydCBmb3IgZU1NQywgU0QgY2FyZCwgZXRoZXJuZXQsIGFsbCBV
U0IyCj4+IGFuZCBVU0IzIHBvcnRzLCBhbGwgZm91ciBNLjIgc2xvdHMsIEdQVSwgUlRDLCBidXp6
ZXIsIFVBUlQgZGVidWdnaW5nIGFzCj4+IHdlbGwgYXMgdGhlIGJ1dHRvbnMgYW5kIExFRHMuCj4+
IFRoZSBHUElPcyBhcmUgbGFiZWxlZCBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBLcm9wYXRzY2ggPHNlYi1kZXZAbWFpbC5kZT4KPj4g
LS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGXCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgIDEgKwo+PiDCoCAuLi4vcmszNTg4LWZyaWVuZGx5ZWxlYy1jbTM1ODgtbmFz
LmR0c8KgwqDCoMKgwqDCoMKgIHwgNzU5ICsrKysrKysrKysrKysrKysrKwo+PiDCoCAuLi4vcm9j
a2NoaXAvcmszNTg4LWZyaWVuZGx5ZWxlYy1jbTM1ODguZHRzacKgIHwgNjU1ICsrKysrKysrKysr
KysrKwo+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDE0MTUgaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgCj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWZy
aWVuZGx5ZWxlYy1jbTM1ODgtbmFzLmR0cwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWZyaWVuZGx5ZWxlYy1jbTM1ODguZHRz
aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
