Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B42C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 13:41:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17F5560F24
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 13:41:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 17F5560F24
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DfpQK6hLPJ0IhDqZ+W2bt20lAv/A+faU8VH5co7nCTY=; b=BeLlNZLkDsqtDoQaloNTSMMUGu
	vQTNP29THqjn7Kd0BH0/vdIQ4/KIvBE8fKRWGy3wg9FFFoBa07ILkV4Y3b6kwFclHsr2M++22A1l7
	Aniq5uXj31Hu3/+HnUzeBhIjATKL2oi+eGTG5zN0w6YvI/8uDvZi4PJvorkQ8sJg0iwcBMVfWhk/7
	qEAwNL3hEUKLa8LPOwT0SjMUBS4OKHNj88WyaM87BsdRNUfsx7W0XmixsTQrY6cRwwEFYedzTqJ/I
	BU3zE8/vHW/4RANoTwdIyFQqLLpx1N6KzBRgVO0+EJqxyjzMG40exEtbkebDnfSzBtCfKWDciYleu
	e7gmT1Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT2VN-008fB0-0m; Wed, 22 Sep 2021 13:41:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT2UT-008f0J-5x
 for linux-rockchip@lists.infradead.org; Wed, 22 Sep 2021 13:40:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mT2UI-0004uK-1E; Wed, 22 Sep 2021 15:40:38 +0200
Subject: Re: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Arnd Bergmann <arnd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20210917110528.24454-1-michael.riesch@wolfvision.net>
 <2397289.mVTDCA6dLn@diego>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ce3f2ece-4c30-ad01-fd51-8a3e46297234@pengutronix.de>
Date: Wed, 22 Sep 2021 15:40:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2397289.mVTDCA6dLn@diego>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_064049_329137_32DE3A4F 
X-CRM114-Status: GOOD (  27.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGVsbG8gSGVpa28sCgpPbiAxNy4wOS4yMSAxNDowMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4g
SGkgTWljaGFlbCwKPiAKPiBBbSBGcmVpdGFnLCAxNy4gU2VwdGVtYmVyIDIwMjEsIDEzOjA1OjI4
IENFU1Qgc2NocmllYiBNaWNoYWVsIFJpZXNjaDoKPj4gSW4gb3JkZXIgdG8gZW5zdXJlIGRldGVy
bWluaXN0aWMgcHJvYmUgb3JkZXIgb3ZlciBkaWZmZXJlbnQgYm9hcmRzLAo+PiBtb3ZlIHRoZSBh
bGlhc2VzIG9mIG9uLVNvQyBjb21wb25lbnRzIHRvIHRoZSBjb3JyZXNwb25kaW5nIGR0c2kKPj4g
ZmlsZXMuCj4gCj4gcGxlYXNlIHJlYWQgdGhlIGdpdCBoaXN0b3J5IG9uIHRoZSBvdGhlciBSb2Nr
Y2hpcCBTb0NzLiBXZSBqdXN0IG1vdmVkCj4gdGhlIGFsaWFzZXMgb24gdGhlbSBfdG9fIHRoZSBi
b2FyZC1maWxlcywgYXMgcmVxdWVzdGVkIGJ5Cj4gYXJtLXNvYyBtYWludGFpbmVycyA7LSkKCltB
ZGRpbmcgQXJuZCB0byBDQ10KCkZvciBvbGQgYm9hcmRzLCBjaGFuZ2luZyB0aGUgYWxpYXNlcyBt
YXkgaW50cm9kdWNlIGJyZWFrYWdlIHRoYXQgb3V0d2VpZ2hzCnRoZSBiZW5lZml0IG9mIGhhdmlu
ZyBjb25zaXN0ZW50IG51bWJlcmluZy4gVGhpcyBkb2Vzbid0IHNlZW0gdG8gYXBwbHkgaGVyZToK
cmszNTY2LmR0c2kgaXMgYSBuZXcgZGV2aWNlIHRyZWUgbm90IHlldCBpbiB2NS4xNS1yYzIgYW5k
IHJrMzU2OCBpcyBuZXcgaW4KdjUuMTQgYW5kIGhhcyBvbmx5IG9uZSBib2FyZCBwYXJ0aWFsbHkg
c3VwcG9ydGVkLCBzbyBpZiB3ZSB3ZXJlIHRvIGRvIHRoaXMKY2hhbmdlIHdlIHNob3VsZCBkbyBp
dCBub3cuIEJvYXJkcyB3aWxsIHN0aWxsIGJlIGZyZWUgdG8gb3ZlcnJpZGUgdGhlIGFsaWFzZXMs
CmJ1dCB0aG9zZSB0aGF0IGRvbid0IHdpbGwgaGF2ZSBjb25zaXN0ZW50IG51bWJlcmluZyByZWdh
cmRsZXNzIG9mIHdoZXRoZXIKbm9kZXMgYXJlIGVuYWJsZWQsIGNhcmRzIGFyZSBkZXRlY3RlZCBv
ciBwcm9iZSBvcmRlci4KCgpDaGVlcnMsCkFobWFkCgo+IAo+IAo+IEhlaWtvCj4gCj4gCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9u
Lm5ldD4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFy
dHo2NC1hLmR0cyB8IDYgLS0tLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2Ni5kdHNpICAgICAgICAgICB8IDQgKysrKwo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtZXZiMS12MTAuZHRzICAgfCA3IC0tLS0tLS0KPj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgICAgICAgICAgIHwgNSArKysrKwo+PiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSAgICAgICAgICAgfCAyICsrCj4+ICA1
IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQt
YS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0
cwo+PiBpbmRleCBhMjQ0ZjdiODdlMzguLjE1NmJiYjhhYTRjNCAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMKPj4gQEAg
LTEwLDEyICsxMCw2IEBACj4+ICAJbW9kZWwgPSAiUGluZTY0IFJLMzU2NiBRdWFydHo2NC1BIEJv
YXJkIjsKPj4gIAljb21wYXRpYmxlID0gInBpbmU2NCxxdWFydHo2NC1hIiwgInJvY2tjaGlwLHJr
MzU2NiI7Cj4+ICAKPj4gLQlhbGlhc2VzIHsKPj4gLQkJZXRoZXJuZXQwID0gJmdtYWMxOwo+PiAt
CQltbWMwID0gJnNkbW1jMDsKPj4gLQkJbW1jMSA9ICZzZGhjaTsKPj4gLQl9Owo+PiAtCj4+ICAJ
Y2hvc2VuOiBjaG9zZW4gewo+PiAgCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7
Cj4+ICAJfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni5kdHNpCj4+IGlu
ZGV4IDM4MzllZWY1ZTRmNy4uYzFiMzg0MWNhYTc3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY2LmR0c2kKPj4gQEAgLTQsNiArNCwxMCBAQAo+PiAgCj4+ICAvIHsK
Pj4gIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2NiI7Cj4+ICsKPj4gKwlhbGlhc2VzIHsK
Pj4gKwkJZXRoZXJuZXQwID0gJmdtYWMxOwo+PiArCX07Cj4+ICB9Owo+PiAgCj4+ICAmcG93ZXIg
ewo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZi
MS12MTAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAu
ZHRzCj4+IGluZGV4IDE4NGUyYWEyNDE2YS4uMjE4Zjg1YWY3MzBjIDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmIxLXYxMC5kdHMKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAuZHRzCj4+IEBAIC0x
MywxMyArMTMsNiBAQAo+PiAgCW1vZGVsID0gIlJvY2tjaGlwIFJLMzU2OCBFVkIxIEREUjQgVjEw
IEJvYXJkIjsKPj4gIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1ldmIxLXYxMCIsICJy
b2NrY2hpcCxyazM1NjgiOwo+PiAgCj4+IC0JYWxpYXNlcyB7Cj4+IC0JCWV0aGVybmV0MCA9ICZn
bWFjMDsKPj4gLQkJZXRoZXJuZXQxID0gJmdtYWMxOwo+PiAtCQltbWMwID0gJnNkbW1jMDsKPj4g
LQkJbW1jMSA9ICZzZGhjaTsKPj4gLQl9Owo+PiAtCj4+ICAJY2hvc2VuOiBjaG9zZW4gewo+PiAg
CQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4+ICAJfTsKPj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+IGluZGV4IDJmZDMxM2EyOTVmOC4uZGQw
ZTgwMGNmNzUyIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0
c2kKPj4gQEAgLTgsNiArOCwxMSBAQAo+PiAgLyB7Cj4+ICAJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1NjgiOwo+PiAgCj4+ICsJYWxpYXNlcyB7Cj4+ICsJCWV0aGVybmV0MCA9ICZnbWFjMDsK
Pj4gKwkJZXRoZXJuZXQxID0gJmdtYWMxOwo+PiArCX07Cj4+ICsKPj4gIAlxb3NfcGNpZTN4MTog
cW9zQGZlMTkwMDgwIHsKPj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtcW9zIiwg
InN5c2NvbiI7Cj4+ICAJCXJlZyA9IDwweDAgMHhmZTE5MDA4MCAweDAgMHgyMD47Cj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+PiBpbmRleCBlNDJmYmFjNjE0N2Iu
LmJiMDU0MGQzMDA4YyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NnguZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
eC5kdHNpCj4+IEBAIC0yOSw2ICsyOSw4IEBACj4+ICAJCWkyYzMgPSAmaTJjMzsKPj4gIAkJaTJj
NCA9ICZpMmM0Owo+PiAgCQlpMmM1ID0gJmkyYzU7Cj4+ICsJCW1tYzAgPSAmc2RtbWMwOwo+PiAr
CQltbWMxID0gJnNkaGNpOwo+PiAgCQlzZXJpYWwwID0gJnVhcnQwOwo+PiAgCQlzZXJpYWwxID0g
JnVhcnQxOwo+PiAgCQlzZXJpYWwyID0gJnVhcnQyOwo+Pgo+IAo+IAo+IAo+IAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwKPiAKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAg
ICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcg
SGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwg
RmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
