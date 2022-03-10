Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F2DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 12:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Et2skwDx5zygO/Cx/SIpLhm8B6aBQ4pE7srXr+8cHbI=; b=vPnS3lQHzB1c5Z
	L21PUXH6XN/lepHBpOwWBR6lTVFaaCMjvJRRk5ruEJvXsfbfq7zqAvu2gn05J58HX10LSZ0rGNeP0
	Qdj75L3A0LskLgpBzSDL88vaUQrOerlA2GuAMguDY62xIjNOFLtH5NDt/afnkc+W59ehlNaREKHsL
	agkLRYF/HcoVh5bhHdMX2EH+TRo0gxT6DRC0zIMSBov7dDReK+GoNe7rkQAWMqqaYJWhP5r6tgnWR
	7s7ptn/2meLZ+AViksQruW7I8Aa7b+eeYvdh6nzVX3M1dMSNR+WoaFO2IT7HBzfyKm/dQav4TQe5M
	DNxZyTvRRsHjuP3uAXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSHeI-00Ckk5-9R; Thu, 10 Mar 2022 12:12:06 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSHeF-00Ckj0-Jd
 for linux-rockchip@lists.infradead.org; Thu, 10 Mar 2022 12:12:05 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id F30081E2A73;
 Thu, 10 Mar 2022 20:11:59 +0800 (CST)
Date: Thu, 10 Mar 2022 20:12:01 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andy.shevchenko@gmail.com>
Cc: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 linus.walleij <linus.walleij@linaro.org>, 
 "Tao Huang" <huangtao@rock-chips.com>, 
 =?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>
Subject: Re: Re: [PATCH 2/4] gpio: rockchip: get irq support for both dt and
 acpi
References: <20220308061935.2441447-1-jay.xu@rock-chips.com>, 
 <20220308061935.2441447-3-jay.xu@rock-chips.com>, 
 <CAHp75VenbfJLOmavP8p8gqfka-n1xvni23g_vT7vg=wrJK5Erg@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022031020120121167516@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUMaTB9WH09KSktLGk
 ofQ01OVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODo6Mio4Kj4BDTU1OkoyEwMo
 FB9PCz9VSlVKTU9NQkpPSElLSEhLVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUhMQ0M3Bg++
X-HM-Tid: 0a7f73be371fda2bkuwsf30081e2a73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_041203_863665_4D450DA1 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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

SGnCoEFuZHkgU2hldmNoZW5rbwoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29t
Cj5PbiBXZWQsIE1hciA5LCAyMDIyIGF0IDE6MDYgQU0gSmlhbnF1biBYdSA8amF5Lnh1QHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPj4KPj4gR2V0IHRoZSBpcnEgb2YgZ3BpbyBjb250cm9sbGVyIHdp
dGggZndub2RlIGFwaXMsIHN1cHBvcnQgZm9yIGJvdGggZHQKPj4gbm9kZSBhbmQgYWNwaS4KPgo+
RFQKPkFDUEkKPiAKb2ssIGkgd2lsbCBmaXggaXQgaW4gbmV4dCBwYXRjaHNldAo+Li4uCj4KPj4g
LQo+Cj5TdHJheSBjaGFuZ2UuCj4KPj4gKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+Cj4KPlByb2Jh
Ymx5IHlvdSB3YW50ZWQgcHJvcGVydHkuaC4gCmZvciB0aGlzIHBhdGNoIG1heWJlIHByb3BlcnR5
LmgsIGZvciBsYXRlciBhY3BpIHN1cHBvcnQsIHRoZSBhY3BpLmggd2lsbCBiZSBuZWVkCj4KPj7C
oCAjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+Cj4+wqAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+
PsKgICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPj4gQEAgLTYzOSwxMCArNjM5LDYgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9nZXRfYmFua19kYXRhKHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAq
YmFuaykKPj7CoCB7Cj4+wqDCoMKgwqDCoMKgwqDCoCBpbnQgaWQgPSAwOwo+Pgo+PiAtwqDCoMKg
wqDCoMKgIGJhbmstPmlycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKGJhbmstPm9mX25vZGUsIDAp
Owo+PiAtwqDCoMKgwqDCoMKgIGlmICghYmFuay0+aXJxKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gLQo+PsKgwqDCoMKgwqDCoMKgwqAgYmFuay0+
Y2xrID0gb2ZfY2xrX2dldChiYW5rLT5vZl9ub2RlLCAwKTsKPj7CoMKgwqDCoMKgwqDCoMKgIGlm
IChJU19FUlIoYmFuay0+Y2xrKSkKPj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gUFRSX0VSUihiYW5rLT5jbGspOwo+PiBAQCAtNjY4LDYgKzY2NCwyNCBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX2dldF9iYW5rX2RhdGEoc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5r
KQo+PsKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+wqAgfQo+Cj4uLi4KPgo+PiArwqDCoMKg
wqDCoMKgIGlmIChucCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXJxID0gaXJx
X29mX3BhcnNlX2FuZF9tYXAobnAsIDApOwo+PiArwqDCoMKgwqDCoMKgIGVsc2UgaWYgKGhhc19h
Y3BpX2NvbXBhbmlvbihkZXYpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnEg
PSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKHRvX3BsYXRmb3JtX2RldmljZShkZXYpLCAwKTsK
Pgo+V2h5IGNhbid0IHRoaXMgd29yayBmb3IgdGhlIERUIGNhc2U/IAp0cnkgdG8ga2VlcCBzYW1l
IGZvciBkdCBjYXNlLCBvayBpIHdpbGwgbW9kaWZ5IHRvIGNvbW1vbiB1c2FnZQo+Cj4tLQo+V2l0
aCBCZXN0IFJlZ2FyZHMsCj5BbmR5IFNoZXZjaGVua28KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
