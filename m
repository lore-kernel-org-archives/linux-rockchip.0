Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A720EC28B2F
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 15:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmDxD8aACz+qU9MMNuNn51Hh4Y0GtXKamkgJg58G/oo=; b=2dbBAXOR8bIokL
	L3BE/vBKA7YvK1EtTJu09em6RbtDWaa3fL/7yYBExJdfPa16/9GLELLCi9+RMV509cPUTfQWD42fZ
	IY86cBeTFcxmyrjbhz2SisbJYS23x23+JCWoDXov95q5AS2/uYu0MKfUK4HC8fd/UaQwGbcDBSBKY
	1uW+ax1hlmhSyPKvtZpJ5wWN5737PBkNZ3Al2z8N2graes0iR19F4QohlpwHCeqUnJziAWtBUl2WA
	FiBMp1aQt7taI2H4U8CH29LdpxwyY6vfR43bqZaqp2rDE8QayiOoHDK8jjI0letuc6za3/h7k1cwj
	Y58HKeZWrb/+U8CIcfAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts1dt-00000006Ach-2LaH;
	Tue, 11 Mar 2025 15:35:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts1cD-00000006ARC-2XyE;
	Tue, 11 Mar 2025 15:33:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D9B215C65A5;
	Tue, 11 Mar 2025 15:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CECF7C4CEE9;
	Tue, 11 Mar 2025 15:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1741707236;
	bh=lDOAvpfu7jYme+Na75rMoAH80CWSXMDyhcc1v7MVSyA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a3Cy8K9rnIDW7d7i8zLZzUlMuA/oRHKvHvg0KihF1J9ovoXIcc1HQDWJx92MEiZhT
	 rgMQDevFULeucnchyP80ofWS9Joso19VtIZ44+oxaQ3L1nJxY1JlKHsCMd9puA6ie+
	 jhwKdNsELlNxHws4TwiN7Tvv0meG04DQZGO4Mb9M=
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
Subject: [PATCH 5.10 321/462] drm/rockchip: cdn-dp: Use drm_connector_helper_hpd_irq_event()
Date: Tue, 11 Mar 2025 15:59:47 +0100
Message-ID: <20250311145811.039581105@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250311145758.343076290@linuxfoundation.org>
References: <20250311145758.343076290@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_083357_754690_3DDD17A1 
X-CRM114-Status: GOOD (  15.07  )
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

NS4xMC1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
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
ZG4tZHAtY29yZS5jCmluZGV4IDUzY2FkMTAwM2FkNzcuLmEzNjY0NmUyMzRhZWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCkBAIC05MTUsOSArOTE1LDYgQEAgc3RhdGlj
IHZvaWQgY2RuX2RwX3BkX2V2ZW50X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogewog
CXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgY2Ru
X2RwX2RldmljZSwKIAkJCQkJCWV2ZW50X3dvcmspOwotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IgPSAmZHAtPmNvbm5lY3RvcjsKLQllbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzIG9s
ZF9zdGF0dXM7Ci0KIAlpbnQgcmV0OwogCiAJbXV0ZXhfbG9jaygmZHAtPmxvY2spOwpAQCAtOTc5
LDExICs5NzYsNyBAQCBzdGF0aWMgdm9pZCBjZG5fZHBfcGRfZXZlbnRfd29yayhzdHJ1Y3Qgd29y
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
