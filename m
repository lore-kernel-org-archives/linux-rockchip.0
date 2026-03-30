Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21BBDFF492D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 02:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROGjUGyGCpCekXoeOelxNoZHQDiApYvKaTVNEDfb9Yc=; b=XE/TMnmEBDnsCN
	sYVJbe0Xcb0k+fdFx2XTIYk5vWgeimQv9FdYQwJbSPJrIBcRaMCmNaunUYgxWX+9dL8Fsi6blZxiz
	XD8Q8o8L/ysGaKpoGZI0dk9aZ+jGNeHvLph42RG7BWKbcy6EpJhBcrsFTdTHhJicS+vhBsd8nOj8o
	ZaZCJvaE9Nt7+blbjg2CYaKglNEuDLbICNqO4kW6bSnwLagKOCFSeCkkBha5DJkMl6U+Q2gM0Injo
	Br2saYQyOZUydzr/BVrUZy9XtdexokGiM3RM8g/IG/7SAmIxgI610fxcHCQ68l5eWOk9TCB15MJbk
	MPeqa7JgreGyuyVpOgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w72fR-0000000AWL6-41ga;
	Mon, 30 Mar 2026 02:47:54 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w72fH-0000000AWJe-3SLJ;
	Mon, 30 Mar 2026 02:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774838854; bh=LzfztcHVW5zVig+WG14bRx+Z0nkYHAr2g4y2I8ErAoE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=M2eeelTW6i0L0tXSpv9TL1cOaX4GUj+YwnaOgyy9Y+WcChuL8DB8I2JClDgNG5esP
	 /ibxCqZmgOBqB50GxHA2Q9Shm9MoxEIC7xc9Ea+YsINxXUG8+J9LoI/JESpTh7K1ll
	 5+Tho7bGpC6b4nTc/UqAQF88kzoDEaPCndLfJ1EY=
Received: from mail.red54.com ([139.99.8.57])
	by newxmesmtplogicsvrszc56-0.qq.com (NewEsmtp) with SMTP
	id BC0B724B; Mon, 30 Mar 2026 10:47:00 +0800
X-QQ-mid: xmsmtpt1774838820tpjwh2w6i
Message-ID: <tencent_723DE3D68C7F44CF67ED583F558130B47208@qq.com>
X-QQ-XMAILINFO: NGZp1yYNf7Y+JMPTFH+qlG0rqFrd7A0ipJV8tAJUcbaZuu0agTHNatFA4WZx/s
	 zodnfSGb1N+LAOqHNYU+r1lA0EcdWOT/nY6HCBp6KlPHtbuylYyVlMGP8XfiVBQeXgl8sJgNkU7u
	 /FFo437UhXvLd4MVfvGMYNYMuKCiQE9gJ7hTn/uaMdUMroYzccZhE49oG/amEjCfsyP4MZ+S/tRP
	 kADGHEiZ5mNjZm2VJ2oeaGVJ6eqi3bDMhE6K6g883lDqqWhk85qB5cl5BkotUirbY+oMm0dwSsa3
	 diboPV4L6ehO0NGLq+0UfOL+ZrQksOhS3FGUz5DAO7Mvf2lPB7PZiXJn9ZPg6c1bSP+rCgaLkhON
	 66fwD8CEhwamOsYf27Wbt9o9C1cj6OyHjSISetWBySFmE7fUz5ENXBl7ZdJlKd4YCoaRxv+KZ29i
	 wps2ca7JKNs9oL+gb2LLOKLqtvZBX48Cby61HPzxi1lTfQhFd8FAaiBIE73WHxIOupRni3ucFZna
	 hEk1vnuaCXBB5lPwLLXA+2sGwosTx38XHtxs2W0+AxajoTe5e2K7DKszL44PhWwsUqACuaCwIza8
	 j2ZlLPavRhNWSvnGnzAU3EHYH5jNJcr3sy2BrB7Az5jT6UubNlWlc4JrbjdAA8VLhI36PqMVUSon
	 Gx52rRgFdFw8YdDMF9V8gwzn3/m0oG3zoSS9Oh3vh40tl0TFNQgil2L946tlM6yZOlo8cd+j39M0
	 Zt0t9OBTXNRCqf0TI0ly+MPPA6O5ifBb1rK8NaqoUgnyVRp2dcegXhZ4oAiInUW9VZLtdmFZuI5b
	 V32NC6k7yAQNlEx415H4MKoydnY7jXUL9KsN6UlCsUinLTt/VZhgU+pNbdIEndjzOse5fAG0l6VI
	 aWy6WMVOOyhlpzgJd0yfIcGmObTQY7xlAv35+HebXUjRJ80/kmUjLElSZI+y9g9yO448fnFDlZuv
	 bX83Abl/L7cavgA8+Q9fHhPMiri9ksB/IPs1SglOniuK5y22NrEeBjYuLflRh54JUzi/jKgOLJoQ
	 VraR+p0RqXtKKyAvwKnhcslaOTJC8Lmf5vCtpwPU5KQexpaG6eP+8x1SIdYyHc9luOyS0ZTcSUSs
	 Br6zrxwFeblJb6BU66ckbYxUhBIA==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
To: krzk@kernel.org
Cc: Yeking@Red54.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	finley.xiao@rock-chips.com,
	heiko@sntech.de,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3562 serial aliases
Date: Mon, 30 Mar 2026 02:46:48 +0000
X-OQ-MSGID: <20260330024657.50845-1-Yeking@Red54.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <9b3ee9e9-d44d-49b1-81ac-9c3806dc0efb@kernel.org>
References: <9b3ee9e9-d44d-49b1-81ac-9c3806dc0efb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_194746_284394_F295805B 
X-CRM114-Status: GOOD (  16.30  )
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

T24gU2F0LCBNYXIgMjgsIDIwMjYgYXQgMDQ6MDg6NTdQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAyOC8wMy8yMDI2IDE0OjA1LCDosKLoh7TpgqYgKFhJRSBaaGliYW5n
KSB3cm90ZToKPiA+IFRoaXMgZml4ZXMgdGhlIHN0ZG91dC1wYXRoIGluIHJrMzU2Mi1ldmIyLXYx
MC5kdHMuCj4gPiAKPiA+IEZpeGVzOiBjZWI2ZWYxZWE5MDAgKCJhcm02NDogZHRzOiByb2NrY2hp
cDogQWRkIFJLMzU2MiBldmIyIGRldmljZXRyZWUiKQo+ID4gU2lnbmVkLW9mZi1ieTog6LCi6Ie0
6YKmIChYSUUgWmhpYmFuZykgPFlla2luZ0BSZWQ1NC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpIHwgMTAgKysrKysrKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjIuZHRzaQo+ID4gaW5kZXggZTQ4MTZhYTNkYWUwLi4xNGU3NGU4YWM3
ZGYgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5k
dHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpCj4g
PiBAQCAtMjYsNiArMjYsMTYgQEAgYWxpYXNlcyB7Cj4gPiAgCQlncGlvMiA9ICZncGlvMjsKPiA+
ICAJCWdwaW8zID0gJmdwaW8zOwo+ID4gIAkJZ3BpbzQgPSAmZ3BpbzQ7Cj4gPiArCQlzZXJpYWww
ID0gJnVhcnQwOwo+ID4gKwkJc2VyaWFsMSA9ICZ1YXJ0MTsKPiA+ICsJCXNlcmlhbDIgPSAmdWFy
dDI7Cj4gPiArCQlzZXJpYWwzID0gJnVhcnQzOwo+ID4gKwkJc2VyaWFsNCA9ICZ1YXJ0NDsKPiA+
ICsJCXNlcmlhbDUgPSAmdWFydDU7Cj4gPiArCQlzZXJpYWw2ID0gJnVhcnQ2Owo+ID4gKwkJc2Vy
aWFsNyA9ICZ1YXJ0NzsKPiA+ICsJCXNlcmlhbDggPSAmdWFydDg7Cj4gPiArCQlzZXJpYWw5ID0g
JnVhcnQ5Owo+IAo+IFVBUlQgYWxpYXNlcyBhcmUgcHJvcGVydGllcyBvZiB0aGUgYm9hcmRzLCBu
b3QgU29DLgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKClNvIGFyZSB5b3Ugc2F5aW5n
IHRoYXQgd2UgbmVlZCB0byByZW1vdmUgdGhlIHNlcmlhbCBhbGlhc2VzIGZyb20gZmlsZXMKbGlr
ZSByazMzMDguZHRzaSwgcmszMzI4LmR0c2ksIHJrMzM2OC5kdHNpLCByazMzOTktYmFzZS5kdHNp
LApyazM1NngtYmFzZS5kdHNpLCByazM1NzYuZHRzaSwgcmszNTg4LWJhc2UuZHRzaSwgYW5kIHNv
IG9uPwoKS2luZCByZWdhcmRzLApYSUUgWmhpYmFuZwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
