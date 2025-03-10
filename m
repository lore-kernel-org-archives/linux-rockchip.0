Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F030AC282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 18:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56omPlT4bYeSRXYcHKhjtEwQ4nmefpdPXJASDTfTD7g=; b=0OTjIXNR29apZ/
	l5YM4ePtFvPCPzX7bBoIhX7iRZnNuK9SJc1bMTwpe+Dx1iPAjFHeJPOyEY6P5MsQCmO2ZGVIs+b8d
	V2cWKHjrpd3Eyx1UNi94SmuPuNQQywk7UwnWe3YV2/2nMQQuPqSZg69Lq+CyG1cIbBDYfd2UDGcUY
	5QEOasgeyMst4a6v9Sc5v+ItMQ0+C+UclWpZbFA5oCrAiznWQqTOExgmMk/OcpyTW+wg6OUaMtCUz
	LV8u89GtSyAoMrs0/Tvzuip3dKXezjUyYv4mduihqGtBfVmbVxotNy7vvbreumFdl+/xDj4sEl99i
	TWgGfVnLKDT8VYM8AZxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trhiY-00000003b6F-0HIy;
	Mon, 10 Mar 2025 18:19:10 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trheo-00000003aRJ-0mZo;
	Mon, 10 Mar 2025 18:15:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 110AEA46131;
	Mon, 10 Mar 2025 18:09:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 573F9C4CEE5;
	Mon, 10 Mar 2025 18:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1741630516;
	bh=vzvrSyqn6DJjUIxws5xS9TDyA2751Ep1ig0ZZJZcS6M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=awRXIwASt6IM3fvoJMk4Djw8panTo+rxZVnNeA8VV4Y+c6PJE1og6Q9JM96VhqCsu
	 ZEE2EFu8XUpTS+eol+cVEGRTtL61JjM0oUwy5nW5b37ltPRNsbBLsCbgVmvy4wKfOY
	 xLhrmMt6x6crzR99T3GvUWT+EhAr84zuywaM/hhY=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Guenter Roeck <groeck@chromium.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.15 441/620] drm/rockchip: cdn-dp: Use drm_connector_helper_hpd_irq_event()
Date: Mon, 10 Mar 2025 18:04:47 +0100
Message-ID: <20250310170603.006059216@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310170545.553361750@linuxfoundation.org>
References: <20250310170545.553361750@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_111518_376061_340A6C63 
X-CRM114-Status: GOOD (  15.19  )
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

NS4xNS1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93LgoKLS0tLS0tLS0tLS0tLS0tLS0tCgpGcm9tOiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KClsgVXBzdHJlYW0gY29tbWl0IDY2NmUxOTYw
NDY0MTQwY2M0YmM5MjAzYzIwMzA5N2U3MGI1NGM5NWEgXQoKVGhlIGNvZGUgZm9yIGRldGVjdGlu
ZyBhbmQgdXBkYXRpbmcgdGhlIGNvbm5lY3RvciBzdGF0dXMgaW4KY2RuX2RwX3BkX2V2ZW50X3dv
cmsoKSBoYXMgYSBudW1iZXIgb2YgcHJvYmxlbXMuCgotIEl0IGRvZXMgbm90IGFxdWlyZSB0aGUg
bG9ja3MgdG8gY2FsbCB0aGUgZGV0ZWN0IGhlbHBlciBhbmQgdXBkYXRlCnRoZSBjb25uZWN0b3Ig
c3RhdHVzLiBUaGVzZSBhcmUgc3RydWN0IGRybV9tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4
CmFuZCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnLm11dGV4LgoKLSBJdCBkb2VzIG5vdCB1c2UgZHJt
X2hlbHBlcl9wcm9iZV9kZXRlY3QoKSwgd2hpY2ggaGVscHMgd2l0aCB0aGUKZGV0YWlscyBvZiBs
b2NraW5nIGFuZCBkZXRlY3Rpb24uCgotIEl0IHVzZXMgdGhlIGNvbm5lY3RvcidzIHN0YXR1cyBm
aWVsZCB0byBkZXRlcm1pbmUgYSBjaGFuZ2UgdG8KdGhlIGNvbm5lY3RvciBzdGF0dXMuIFRoZSBl
cG9jaF9jb3VudGVyIGZpZWxkIGlzIHRoZSBjb3JyZWN0IG9uZS4gVGhlCmZpZWxkIHNpZ25hbHMg
YSBjaGFuZ2UgZXZlbiBpZiB0aGUgY29ubmVjdG9yIHN0YXR1cycgdmFsdWUgZGlkIG5vdApjaGFu
Z2UuCgpSZXBsYWNlIHRoZSBjb2RlIHdpdGggYSBjYWxsIHRvIGRybV9jb25uZWN0b3JfaGVscGVy
X2hwZF9pcnFfZXZlbnQoKSwKd2hpY2ggZml4ZXMgYWxsIHRoZXNlIHByb2JsZW1zLgoKU2lnbmVk
LW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkZpeGVzOiA4
MTYzMmRmNjk3NzIgKCJkcm0vcm9ja2NoaXA6IGNkbi1kcDogZG8gbm90IHVzZSBkcm1faGVscGVy
X2hwZF9pcnFfZXZlbnQiKQpDYzogQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNvbT4KQ2M6
IEd1ZW50ZXIgUm9lY2sgPGdyb2Vja0BjaHJvbWl1bS5vcmc+CkNjOiBTYW5keSBIdWFuZyA8aGpj
QHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpD
YzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
CkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4gIyB2NC4xMSsKU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
L21zZ2lkLzIwMjQxMTA1MTMzODQ4LjQ4MDQwNy0xLXR6aW1tZXJtYW5uQHN1c2UuZGUKU2lnbmVk
LW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jIHwgOSArLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtY29yZS5jCmluZGV4IGI5ZWYzNWEzNWM4NTcuLmFmMWUzNjFkYThkZjkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCkBAIC05MTYsOSArOTE2LDYgQEAgc3RhdGlj
IHZvaWQgY2RuX2RwX3BkX2V2ZW50X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogewog
CXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgY2Ru
X2RwX2RldmljZSwKIAkJCQkJCWV2ZW50X3dvcmspOwotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IgPSAmZHAtPmNvbm5lY3RvcjsKLQllbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzIG9s
ZF9zdGF0dXM7Ci0KIAlpbnQgcmV0OwogCiAJbXV0ZXhfbG9jaygmZHAtPmxvY2spOwpAQCAtOTgw
LDExICs5NzcsNyBAQCBzdGF0aWMgdm9pZCBjZG5fZHBfcGRfZXZlbnRfd29yayhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcmspCiAKIG91dDoKIAltdXRleF91bmxvY2soJmRwLT5sb2NrKTsKLQotCW9s
ZF9zdGF0dXMgPSBjb25uZWN0b3ItPnN0YXR1czsKLQljb25uZWN0b3ItPnN0YXR1cyA9IGNvbm5l
Y3Rvci0+ZnVuY3MtPmRldGVjdChjb25uZWN0b3IsIGZhbHNlKTsKLQlpZiAob2xkX3N0YXR1cyAh
PSBjb25uZWN0b3ItPnN0YXR1cykKLQkJZHJtX2ttc19oZWxwZXJfaG90cGx1Z19ldmVudChkcC0+
ZHJtX2Rldik7CisJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfaHBkX2lycV9ldmVudCgmZHAtPmNvbm5l
Y3Rvcik7CiB9CiAKIHN0YXRpYyBpbnQgY2RuX2RwX3BkX2V2ZW50KHN0cnVjdCBub3RpZmllcl9i
bG9jayAqbmIsCi0tIAoyLjM5LjUKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
