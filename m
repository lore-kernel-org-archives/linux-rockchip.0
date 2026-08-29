Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A6DC61DCB
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2026 22:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSeFGnE8h5jKcoCJPulvhEWGRCH4Z5420Yn20LBzZ0s=; b=BD5/VwVL+SRIsD
	t7Gi5W/Tz47pJ4ruUjDhpixfUfXRFFqY1qtUfZFqAIUDLcjwNg+HI8obd/up9CMN7DSj69wST8m3b
	W8eyWsXg60Yl+isnOxl7yfTq7SdonNd14f25b0bFm8NOGK3K1tle7kPMSxxTKjKTQBA3IM9ROESLb
	UR2EIH0anmlMEXEwrZqt0nxL2Fte2+t4Jecly7wz1Ed/+B3O/QTFO0Q4vKlqRxP4hmzzWhIA3Hg/I
	An+Z0z1U739U5Bm04pKJH4a5ZzD3ss85liYWlzcw0ZJAXtSS+P08OppNqexs+LS3z+pyrFUJesgF3
	OsZqYUzCffHtPDLOrjFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0R5p-00000007LvB-08nW;
	Sat, 29 Aug 2026 22:00:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0R5m-00000007Lu6-2ZAS;
	Sat, 29 Aug 2026 22:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wQnJuD+BPGQBF7rfni0A/KmSwUG6YkQKLCt4vUrM/bo=; b=Js1UJoPKOfEHMGQOg87SKX9bxK
	/2s7G1BJ9LV47M6RpZFAM3rTqVJ4mwXemCDYBbXyIrxyC/Yun7FhMWvNLh1ECwlV259ZLY1vShQtT
	quCFoTrYfMIgZ4TIH4rMVAbmAkaxvXeQRDSNYMIPxvwUXVS/5m1oETvlQS4CdSMsbDRkPWBDejDvf
	TBpCUOehdumIJNr3Jfhbu79KryMwhMDWvSOHn5KwEKPyZk9QyHfgRBVPMyvfVY8ifk4kIzhANyW2D
	sg41H4OANc6ZRdWnPHqXzyhHsR5Xye88MmchNkuhapMzr30VXlL3++SqagTH8w/Nnebz1rXeF1JDP
	+HSJqqCg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Russell King <linux@armlinux.org.uk>, jbx6244@gmail.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: rockchip: smp: enable CPU1 for rk3066a
Date: Sat, 29 Aug 2026 23:59:55 +0200
Message-ID: <2667576.VLH7GnMWUR@diego>
In-Reply-To: <20260829-cpu-v1-1-33dca576db92@gmail.com>
References: <20260829-cpu-v1-1-33dca576db92@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260829_150002_757072_A36C1315 
X-CRM114-Status: GOOD (  15.72  )
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

QW0gU2Ftc3RhZywgMjkuIEF1Z3VzdCAyMDI2LCAwMTo0MDo1NyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEpvaGFuIEpvbmtlciB2aWEgQjQgUmVsYXk6Cj4gRnJvbTogSMO8
c2V5aW4gQklZSUsgPGJvb2dpZXBvcEBnbXguY29tPgo+IAo+IFJLMzA2NmEgQ1BVMSBmYWlscyB0
byBjb21lIG9ubGluZS4gRml4IGJ5IHVzaW5nCj4gYSBzaW1pbGFyIG1haWxib3ggY29uc3RydWN0
aW9uIGFzIGluIHVzZSB3aXRoCj4gb3RoZXIgUm9ja2NoaXAgU29Dcy4KCiJSSzMwNjYgQ1BVMSBm
YWlscyB0byBjb21lIG9ubGluZSB3aXRoIHJlY2VudCBrZXJuZWxzLi4uLltyZXN0XSIgb3Igc28K
YW5kIGFsc28gcGxlYXNlIHVzZSB0aGUgbGluZSBsZW5ndGggdXAgYSByZXNvbmFibGUgbGVuZ3Ro
IGxpa2UgYXJvdW5kIDcwCnRvIDc1IGNoYXJhY3RlcnMuCgpBbHNvLCBpcyBpdCBrbm93biwgd2h5
IHRoYXQgaGFwcGVucyAtIGkuZS4gd2hhdCBjaGFuZ2VkPwoKPiBTaWduZWQtb2ZmLWJ5OiBIw7xz
ZXlpbiBCSVlJSyA8Ym9vZ2llcG9wQGdteC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9u
a2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9w
bGF0c21wLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNt
cC5jIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9wbGF0c21wLmMKPiBpbmRleCBmNjU5ZDg5NGJm
YWUuLmQ3ZDA4MGMyOWYzYyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3Bs
YXRzbXAuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCj4gQEAgLTEz
Myw3ICsxMzMsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2Jvb3Rfc2Vjb25kYXJ5KHVuc2lnbmVk
IGludCBjcHUsIHN0cnVjdCB0YXNrX3N0cnVjdCAqaWRsZSkKPiAgCWlmIChyZXQgPCAwKQo+ICAJ
CXJldHVybiByZXQ7Cj4gIAo+IC0JaWYgKHJlYWRfY3B1aWRfcGFydCgpICE9IEFSTV9DUFVfUEFS
VF9DT1JURVhfQTkpIHsKPiArCWlmIChyZWFkX2NwdWlkX3BhcnQoKSAhPSBBUk1fQ1BVX1BBUlRf
Q09SVEVYX0E5IHx8Cj4gKwkgICAgb2ZfbWFjaGluZV9pc19jb21wYXRpYmxlKCJyb2NrY2hpcCxy
azMwNjZhIikpIHsKPiAgCQkvKgo+ICAJCSAqIFdlIGNvbW11bmljYXRlIHdpdGggdGhlIGJvb3Ry
b20gdG8gYWN0aXZlIHRoZSBjcHVzIG90aGVyCj4gIAkJICogdGhhbiBjcHUwLCBhZnRlciBhIGJs
b2Igb2YgaW5pdGlhbGl6ZSBjb2RlLCB0aGV5IHdpbGwKCmlzbid0IG5vdyB0aGUgb25seSB1c2Vy
IG9mIHRoZSBvbGQgc3lzdGVtIHRoZSBSSzMxODg/CgpXaXRoIGJvdGggcmszMDY2IGFuZCByazMx
ODggZnJvbSBhIHNpbWlsYXIgdGltZSwgSSdkIGFzc3VtZSBib3RoIGNvdWxkCmJlIHN3aXRjaCBh
bmQgdGh1cyB0aGUgdGhlIG5vdyB1bnVzZWQgY29kZSByZW1vdmVkPwoKSSd2ZSBuZXZlciB0aG91
Z2h0IHRvIGxvb2sgaW50byB0aGF0IC4uLiBuZWVkIHRvIGZpbmQgbXkgUkszMTg4IGJvYXJkIDot
KQoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
