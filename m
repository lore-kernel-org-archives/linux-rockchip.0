Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E5AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 17:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axTctO8k6fWxZzeetsWJSbAcyCZHT94LvWexwa2GDSU=; b=oiOCvtEcpKL9aa
	bho3USpvwy4/eilY4xag0HcZc1wWnNIftzvpee7FPAjTdyQNl9bFC+0176E0xidSrCFW7FZKSxKaq
	xxJpEbLdFcgq+04ppS9CX0T+nVF96jDRlTQOrmNu1rsuB+WQeh4n5ULSA9MrhU9DdImuBkQ/uMV5/
	S3nvztcppXVx11uJMAzuyiilhBgJOm96YXqu4vtkjLsc5WlRgggZBEl7eU9pISRjI4I8r0DWn4Vw1
	E3V5/Vq1WEmtvabNpYlaSxZhGrDnIY+4KF+YHD96gxpEk/2TohXowIoONxN9oC5UCSeB+vQ0FKma4
	QjAnyhEqKyz6OL7HsgsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC2km-00GmPi-MA; Thu, 14 Jul 2022 17:35:56 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC2kb-00GmJn-4t; Thu, 14 Jul 2022 17:35:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27AFF1D13;
	Thu, 14 Jul 2022 10:35:42 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA56E3F70D;
	Thu, 14 Jul 2022 10:35:40 -0700 (PDT)
Message-ID: <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
Date: Thu, 14 Jul 2022 18:35:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Content-Language: en-GB
To: wens@kernel.org, =?UTF-8?Q?Christian_Kohlsch=c3=bctter?=
 <christian@kohlschutter.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_103545_306428_6888820C 
X-CRM114-Status: GOOD (  28.89  )
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

T24gMTQvMDcvMjAyMiA2OjAyIHBtLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gT24gRnJpLCBKdWwg
MTUsIDIwMjIgYXQgMTI6MjcgQU0gQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIKPiA8Y2hyaXN0aWFu
QGtvaGxzY2h1dHRlci5jb20+IHdyb3RlOgo+Pgo+PiBtbWMvU0QtY2FyZCBpbml0aWFsaXphdGlv
biBtYXkgZmFpbCBvbiBOYW5vUGkgcjRzIHdpdGgKPj4gIm1tYzE6IHByb2JsZW0gcmVhZGluZyBT
RCBTdGF0dXMgcmVnaXN0ZXIiIC8KPj4gIm1tYzE6IGVycm9yIC0xMTAgd2hpbHN0IGluaXRpYWxp
c2luZyBTRCBjYXJkIgo+Pgo+PiBNb3Jlb3ZlciwgcmVib290aW5nIHdvdWxkIGFsc28gc29tZXRp
bWVzIGhhbmcuCj4+Cj4+IFRoaXMgaXMgY2F1c2VkIGJ5IHRoZSBncGlvIGVudHJ5IGZvciB0aGUg
dmNjM3YwLXNkIHJlZ3VsYXRvcjsKPj4gZXZlbiB0aG91Z2ggaXQgYXBwZWFycyB0byBiZSB0aGUg
Y29ycmVjdCBHUElPIHBpbiwgdGhlIHByZXNlbmNlCj4+IG9mIHRoZSBiaW5kaW5nIGNhdXNlcyB0
aGVzZSBlcnJvcnMuCj4+Cj4+IEZpeCB0aGUgcmVndWxhdG9yIHRvIGRyb3AgdGhlIGdwaW8gYmlu
ZGluZyBhbmQgYWRkIGEgY29tbWVudAo+PiB0byBwcmV2ZW50IGFjY2lkZW50YWwgcmVpbnRyb2R1
Y3Rpb24gb2YgdGhhdCBlbnRyeS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxz
Y2jDvHR0ZXIgPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPgo+PiAtLS0KPj4gICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgfCAyICstCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4gaW5kZXgg
OGMwZmY2Yzk2ZTAzLi5kNWY4YTYyZTAxYmUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4gQEAgLTY3LDcgKzY3LDcgQEAg
dmNjMXY4X3MzOiB2Y2MxdjgtczMgewo+PiAgICAgICAgICB2Y2MzdjBfc2Q6IHZjYzN2MC1zZCB7
Cj4+ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiAg
ICAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPj4gLSAgICAgICAgICAgICAgIGdw
aW8gPSA8JmdwaW8wIFJLX1BBMSBHUElPX0FDVElWRV9ISUdIPjsKPj4gKyAgICAgICAgICAgICAg
IC8vIGdwaW8gPSA8JmdwaW8wIFJLX1BBMSBHUElPX0FDVElWRV9ISUdIPjsgLy8gYnJlYWtzIFNE
SEMgY2FyZCBzdXBwb3J0Cj4gCj4gVGhpcyBjaGFuZ2Ugb25seSBtZWFucyB0aGF0IHRoZSByZWd1
bGF0b3Igbm8gbG9uZ2VyIGdldHMgY3ljbGVkIHdoZW4KPiBpdCBwcm9iZXMuIEl0J3Mgbm90IGEg
cHJvcGVyIGZpeC4gWW91J3JlIGxlYXZpbmcgdGhlIGtlcm5lbCB3aXRob3V0Cj4gYW55IGNvbnRy
b2wgb3ZlciBTRCBjYXJkIHBvd2VyLCBhbmQgd2l0aCB3aGF0ZXZlciBzdGF0ZSB0aGUgYm9vdGxv
YWRlcgo+IGxlZnQgdGhlIEdQSU8gaW4uIElmIHRoZSBib290bG9hZGVyIGxlZnQgdGhlIEdQSU8g
bG93LCB0aGVuIHlvdSBkb24ndAo+IGdldCB0byB1c2UgdGhlIFNEIGNhcmQsIGV2ZXIuCj4gCj4g
SXQgY3ljbGVzIGJlY2F1c2Ugb2YgdGhlIGxhY2sgb2YgcmVndWxhdG9yLWJvb3Qtb24sIHNvIHRo
ZSBkcml2ZXIKPiByZXF1ZXN0cyB0aGUgR1BJTyB3aXRoIGluaXRpYWwgbG93IHN0YXRlLCBhbmQg
dGhlbiBkcml2ZXMgaXQKPiBoaWdoIHRvIGVuYWJsZSB0aGUgcmVndWxhdG9yLgoKSG1tLCB0aGF0
J3MgYSBnb29kIHBvaW50IC0gYnkgdGhlIHRpbWUgd2UgZ2V0IHRvIExpbnV4LCB3ZSBzaG91bGQg
aGF2ZSAKY29udHJvbCBvdmVyIHRoZSBWQ0NfU0RJTyByZWd1bGF0b3IgYW5kIHRoZSBJL08gZG9t
YWluIGFzIHdlbGwsIHNvIGEgCmZ1bGwgY2xlYW4gcmVzZXQgc2hvdWxkIHJlYWxseSBiZSBubyBw
cm9ibGVtIDovCgpUaGUgIlRpbmtlcmJvYXJkIHByb2JsZW0iIEkgd2FzIHRoaW5raW5nIG9mIGlz
IHdoZW4gdGhlIFNEIGNhcmQgaXMgdGhlIApib290IG1lZGl1bSwgVkNDX1NESU8gc3RheXMgYXQg
MS44ViBvdmVyIGEgcmVib290IGJ1dCB0aGUgSS9PIGRvbWFpbiAKZ2V0cyByZXNldCBiYWNrIHRv
IDMuM1YgbW9kZSwgdGh1cyBjYW5ub3Qgc2VlIGEgbG9naWMgaGlnaCBvbiBhbnkgb2YgdGhlIApJ
L08gbGluZXMsIHRodXMgdGhlIGJvb3QgUk9NIGdpdmVzIHVwIGFmdGVyIGZhaWxpbmcgdG8gZGV0
ZWN0IHRoZSBjYXJkLiAKSWYgd2UncmUgc3RpbGwgYWJsZSB0byBib290IGFzIGZhciBhcyBMaW51
eCwgaXQncyBwcm9iYWJseSBhIGRpZmZlcmVudCAKdGhpbmcuIEFwb2xvZ2llcyBmb3IgdGhlIGNv
bmZ1c2lvbi4KCj4+ICAgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
Pj4gICAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnNkbW1jMF9wd3JfaD47Cj4+ICAgICAg
ICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAKPiBJIHRoaW5rIGRyb3BwaW5nICJy
ZWd1bGF0b3ItYWx3YXlzLW9uIiBzbyB0aGF0IExpbnV4IGNhbiBjeWNsZSBwb3dlcgo+IGFuZCBw
cm9wZXJseSByZXNldCB0aGUgU0QgY2FyZCBpcyB0aGUgcHJvcGVyIGZpeCB0byB0aGUgY2FyZCBi
ZWluZwo+IHN0dWNrIGluIFVIUyBhbmQgbm90IHJlc3BvbmRpbmcuCj4gCj4gQWxzbywgdGhlIHJl
Z3VsYXRvciB1c2VkIGlzIFJUOTE5MywgYWNjb3JkaW5nIHRvIHRoZSBzY2hlbWF0aWNzLiBUaGF0
Cj4gY2hpcCBoYXMgYW4gZW5hYmxlIGRlbGF5IHVuZGVyIDUwIG1pY3JvLXNlY29uZHMuIElmIHRo
YXQgbmVlZHMgdG8gYmUKPiBtb2RlbGVkLCB0aGVuIGFkZCByZWd1bGF0b3ItZW5hYmxlLXJhbXAt
ZGVsYXkuCgpJbmRlZWQsIGlmIGl0J3MgYSBzbG93IHJlZ3VsYXRvciBhbmQgd2UncmUgc2ltcGx5
IHRyeWluZyB0byBwcm9iZSB0aGUgCmNhcmQgdG9vIHNvb24gYmVmb3JlIGl0cyBzdXBwbHkgdm9s
dGFnZSBoYXMgYWN0dWFsbHkgc3RhYmlsaXNlZCwgdGhhdCAKc291bmRzIGVudGlyZWx5IHBsYXVz
aWJsZSwgcGFydGljdWxhcmx5IGlmIHRoZSBmYWlsdXJlIGlzIG9ubHkgaW50ZXJtaXR0ZW50LgoK
VGhhbmtzLApSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
