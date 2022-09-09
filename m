Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 871E1ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 10:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=+t4reozG6/L7RD8kwwfU0pwiW9kwHmVPxOTtydode7M=; b=NVumgW8VVAAbg7
	OUnD7+EdbA3uvBV/WIG0w7/r3YODfSdi9/nGdL3+LT8iGVmD/AxhKzC2/xzXRbpr/t1NdiDIB2G6r
	zr2pAbxOhhv/C2H7B0uiRYYrzrbXOoRbHRlcRiCaLxhrNYyZNE7Ff9AP+qMR91pc4F8vECQm0aCq3
	tr2oobMBcf2iUUKyYucHZQCp7SbwsabdwAMOSsIDX9jAaAAANIr5RoQ267+QXM9bW8Nk0hPtN8/V9
	V4k0k1k8rveQ6w24Twp/bSWHJou+6xHPrb5nuxfnw8D9iBLUZWC0fyhB/LQ9R3iM6CRboMLLes8d3
	zRsvFR7qgqyQDP+Ooxlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWb2J-00FI67-Kx; Fri, 09 Sep 2022 10:14:59 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWb2G-00FI4S-L4
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 10:14:58 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id 5C31C840925;
	Fri,  9 Sep 2022 18:14:53 +0800 (CST)
Date: Fri, 9 Sep 2022 18:14:53 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?6K645YmR576k?= <jay.xu@rock-chips.com>, 
	=?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: "Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 1/6] ARM: dts: rockchip: add gpio alias for gpio dt nodes
References: <20220909090558.3609190-1-jay.xu@rock-chips.com>, 
	<20220909090558.3609190-2-jay.xu@rock-chips.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022090918145313279064@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCS0IYVh1MTR1OQxpLHkpISFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBw6ASo6SD0uPjUjODdRPA8X
	OBBPCQ5VSlVKTU1JTEpDT0JIQ0xJVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU5LT0k3Bg++
X-HM-Tid: 0a8321bec35c2eb8kusn5c31c840925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_031456_853430_60B8AD6B 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
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

Ci0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+QWRkIGdwaW8gYWxpYXMgZm9y
IGdwaW8gY29udHJvbGxlciBkdCBub2Rlcywgd2hpY2ggaXMgdXNlZCBieSB0aGUKPm5ldyBncGlv
IGRyaXZlciB0byBnZXQgdGhlIGluZGV4IG9mIGdwaW8gY29udHJvbGxlciBmb3IgZHJpdmVyLgo+
Cj5TaWduZWQtb2ZmLWJ5OiBKaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+Cj4tLS0K
PiBhcmNoL2FybS9ib290L2R0cy9yazMwMzYuZHRzacKgIHwgMyArKysKPiBhcmNoL2FybS9ib290
L2R0cy9yazMwNjZhLmR0c2kgfCA2ICsrKysrKwo+IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyeC5k
dHNpwqAgfCA0ICsrKysKPiBhcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzacKgIHwgOSArKysr
KysrKysKPiBhcmNoL2FybS9ib290L2R0cy9yazN4eHguZHRzacKgIHwgNCArKysrCj4gNSBmaWxl
cyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4KPmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9yazMwMzYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzAzNi5kdHNpCj5pbmRleCA5
YjBmMDQ5NzU2N2QuLjkxMmMyMTY2N2RkNCAxMDA2NDQKPi0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3JrMzAzNi5kdHNpCj4rKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMwMzYuZHRzaQo+QEAgLTE3
LDYgKzE3LDkgQEAgLyB7Cj4gaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKPgo+IGFsaWFzZXMg
ewo+KwlncGlvMCA9ICZncGlvMDsKPisJZ3BpbzEgPSAmZ3BpbzE7Cj4rCWdwaW8yID0gJmdwaW8y
Owo+IGkyYzAgPSAmaTJjMDsKPiBpMmMxID0gJmkyYzE7Cj4gaTJjMiA9ICZpMmMyOwo+ZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3JrMzA2NmEuZHRzaQo+aW5kZXggZGU5OTE1ZDk0NmY3Li5mZTU2NTQ0MGQ2YWQgMTAwNjQ0Cj4t
LS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kKPisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3JrMzA2NmEuZHRzaQo+QEAgLTEzLDYgKzEzLDEyIEBACj4gLyB7Cj4gY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMwNjZhIjsKPgo+KwlhbGlhc2VzIHsKPisJZ3BpbzQgPSAmZ3BpbzQ7Cj4r
CWdwaW81ID0gJmdwaW81OyAKdGhlIGdwaW81IHdpbGwgYmUgcmVtb3ZlZCBuZXh0IHZlcnNpb24K
Cj4rCWdwaW82ID0gJmdwaW82Owo+Kwl9Owo+Kwo+IGNwdXMgewo+ICNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+ICNzaXplLWNlbGxzID0gPDA+Owo+ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3JrMzIyeC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjJ4LmR0c2kKPmluZGV4IGZmYzE2
ZDZiOTdlMS4uYTgxNGU4MTNhNWRhIDEwMDY0NAo+LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmsz
MjJ4LmR0c2kKPisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyeC5kdHNpCj5AQCAtMTUsNiAr
MTUsMTAgQEAgLyB7Cj4gaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKPgo+IGFsaWFzZXMgewo+
KwlncGlvMCA9ICZncGlvMDsKPisJZ3BpbzEgPSAmZ3BpbzE7Cj4rCWdwaW8yID0gJmdwaW8yOwo+
KwlncGlvMyA9ICZncGlvMzsKPiBzZXJpYWwwID0gJnVhcnQwOwo+IHNlcmlhbDEgPSAmdWFydDE7
Cj4gc2VyaWFsMiA9ICZ1YXJ0MjsKPmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMy
ODguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5kdHNpCj5pbmRleCA0ODdiMGUwM2Q0
YjQuLjRkNTE4NGUyNzM4OSAxMDA2NDQKPi0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5k
dHNpCj4rKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzaQo+QEAgLTE5LDYgKzE5LDE1
IEBAIC8gewo+Cj4gYWxpYXNlcyB7Cj4gZXRoZXJuZXQwID0gJmdtYWM7Cj4rCWdwaW8wID0gJmdw
aW8wOwo+KwlncGlvMSA9ICZncGlvMTsKPisJZ3BpbzIgPSAmZ3BpbzI7Cj4rCWdwaW8zID0gJmdw
aW8zOwo+KwlncGlvNCA9ICZncGlvNDsKPisJZ3BpbzUgPSAmZ3BpbzU7Cj4rCWdwaW82ID0gJmdw
aW82Owo+KwlncGlvNyA9ICZncGlvNzsKPisJZ3BpbzggPSAmZ3Bpbzg7Cj4gaTJjMCA9ICZpMmMw
Owo+IGkyYzEgPSAmaTJjMTsKPiBpMmMyID0gJmkyYzI7Cj5kaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszeHh4LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazN4eHguZHRzaQo+aW5k
ZXggNjE2YTgyOGUwYzZlLi5lMmNiNGI1MWQwMmYgMTAwNjQ0Cj4tLS0gYS9hcmNoL2FybS9ib290
L2R0cy9yazN4eHguZHRzaQo+KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszeHh4LmR0c2kKPkBA
IC0xNiw2ICsxNiwxMCBAQCAvIHsKPgo+IGFsaWFzZXMgewo+IGV0aGVybmV0MCA9ICZlbWFjOwo+
KwlncGlvMCA9ICZncGlvMDsKPisJZ3BpbzEgPSAmZ3BpbzE7Cj4rCWdwaW8yID0gJmdwaW8yOwo+
KwlncGlvMyA9ICZncGlvMzsKPiBpMmMwID0gJmkyYzA7Cj4gaTJjMSA9ICZpMmMxOwo+IGkyYzIg
PSAmaTJjMjsKPi0tCj4yLjI1LjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
