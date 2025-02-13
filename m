Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47212C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 14:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiA9C5idCTkJjU5J+7i+klsRDi2VxtRdHdS5t9sdO5Y=; b=dBaT1aVpLVMJYc
	hrr2dXoiDwzTRAtjynO74a/reDDv2DdGY82vKDY2Zqu3dLahVvIGWRbGRxG9dL5JWbVpxf8i+dCVS
	b1MO+HXL3pl+3buu7zcp6JDPYZubN/94iyGA/ccZh29+U8c49zm7wQSwdpty/lTXb8A1Ux9Ok4tuJ
	RDvBhyfRBRUePyRgZRaexgmBtZQ3fg8uiX6xfWnMVK98m43erRjLJOpjvfDNY5OxtZV+cp6TPAwOu
	rvqB0eqty88AZIqm0u9Bkpkav3Eglk6TT341ADNbAPu2x4Ow6grGHYC6EoAftmM4RJw7mfxiOM2Zs
	RIGxWdlaqXwtiVmckotw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiacb-0000000BQgH-2m6a;
	Thu, 13 Feb 2025 14:55:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiaNG-0000000BNb9-0VAo;
	Thu, 13 Feb 2025 14:39:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 205F25C5657;
	Thu, 13 Feb 2025 14:38:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF160C4CEE4;
	Thu, 13 Feb 2025 14:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1739457569;
	bh=DJ5u3NWB/OY3rQagS7X7AlEuOiAW6ZKH/36ybRwGBmI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KaEmkJT5LRnBygx7lMmnq+jobJ+drTia8PPe5nvBSSn6YiBX9GMdHShA50lUTqHck
	 YutPUFYo7W9HVLGRgCEDgP8WNwJ0JvI9LuSgzv6/1ROR1AZ4BdyFb8j4ugs0EDEy4h
	 At6cPz0HzdwFBWCyGMYHGVPx7hpWX0aHsDgYbLFo=
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
	linux-rockchip@lists.infradead.org
Subject: [PATCH 6.12 149/422] drm/rockchip: cdn-dp: Use drm_connector_helper_hpd_irq_event()
Date: Thu, 13 Feb 2025 15:24:58 +0100
Message-ID: <20250213142442.297407023@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250213142436.408121546@linuxfoundation.org>
References: <20250213142436.408121546@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_063930_242685_B116BB59 
X-CRM114-Status: GOOD (  14.12  )
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

Ni4xMi1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93LgoKLS0tLS0tLS0tLS0tLS0tLS0tCgpGcm9tOiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KCmNvbW1pdCA2NjZlMTk2MDQ2NDE0MGNjNGJj
OTIwM2MyMDMwOTdlNzBiNTRjOTVhIHVwc3RyZWFtLgoKVGhlIGNvZGUgZm9yIGRldGVjdGluZyBh
bmQgdXBkYXRpbmcgdGhlIGNvbm5lY3RvciBzdGF0dXMgaW4KY2RuX2RwX3BkX2V2ZW50X3dvcmso
KSBoYXMgYSBudW1iZXIgb2YgcHJvYmxlbXMuCgotIEl0IGRvZXMgbm90IGFxdWlyZSB0aGUgbG9j
a3MgdG8gY2FsbCB0aGUgZGV0ZWN0IGhlbHBlciBhbmQgdXBkYXRlCnRoZSBjb25uZWN0b3Igc3Rh
dHVzLiBUaGVzZSBhcmUgc3RydWN0IGRybV9tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4CmFu
ZCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnLm11dGV4LgoKLSBJdCBkb2VzIG5vdCB1c2UgZHJtX2hl
bHBlcl9wcm9iZV9kZXRlY3QoKSwgd2hpY2ggaGVscHMgd2l0aCB0aGUKZGV0YWlscyBvZiBsb2Nr
aW5nIGFuZCBkZXRlY3Rpb24uCgotIEl0IHVzZXMgdGhlIGNvbm5lY3RvcidzIHN0YXR1cyBmaWVs
ZCB0byBkZXRlcm1pbmUgYSBjaGFuZ2UgdG8KdGhlIGNvbm5lY3RvciBzdGF0dXMuIFRoZSBlcG9j
aF9jb3VudGVyIGZpZWxkIGlzIHRoZSBjb3JyZWN0IG9uZS4gVGhlCmZpZWxkIHNpZ25hbHMgYSBj
aGFuZ2UgZXZlbiBpZiB0aGUgY29ubmVjdG9yIHN0YXR1cycgdmFsdWUgZGlkIG5vdApjaGFuZ2Uu
CgpSZXBsYWNlIHRoZSBjb2RlIHdpdGggYSBjYWxsIHRvIGRybV9jb25uZWN0b3JfaGVscGVyX2hw
ZF9pcnFfZXZlbnQoKSwKd2hpY2ggZml4ZXMgYWxsIHRoZXNlIHByb2JsZW1zLgoKU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkZpeGVzOiA4MTYz
MmRmNjk3NzIgKCJkcm0vcm9ja2NoaXA6IGNkbi1kcDogZG8gbm90IHVzZSBkcm1faGVscGVyX2hw
ZF9pcnFfZXZlbnQiKQpDYzogQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNvbT4KQ2M6IEd1
ZW50ZXIgUm9lY2sgPGdyb2Vja0BjaHJvbWl1bS5vcmc+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJv
Y2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzog
QW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4gIyB2NC4xMSsKU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21z
Z2lkLzIwMjQxMTA1MTMzODQ4LjQ4MDQwNy0xLXR6aW1tZXJtYW5uQHN1c2UuZGUKU2lnbmVkLW9m
Zi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8ICAgIDkgKy0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDggZGVsZXRpb25zKC0pCgotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAtOTQ3LDkgKzk0Nyw2IEBAIHN0YXRpYyB2b2lk
IGNkbl9kcF9wZF9ldmVudF93b3JrKHN0cnVjdAogewogCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpk
cCA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgY2RuX2RwX2RldmljZSwKIAkJCQkJCWV2ZW50
X3dvcmspOwotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSAmZHAtPmNvbm5lY3Rv
cjsKLQllbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzIG9sZF9zdGF0dXM7Ci0KIAlpbnQgcmV0Owog
CiAJbXV0ZXhfbG9jaygmZHAtPmxvY2spOwpAQCAtMTAwOSwxMSArMTAwNiw3IEBAIHN0YXRpYyB2
b2lkIGNkbl9kcF9wZF9ldmVudF93b3JrKHN0cnVjdAogCiBvdXQ6CiAJbXV0ZXhfdW5sb2NrKCZk
cC0+bG9jayk7Ci0KLQlvbGRfc3RhdHVzID0gY29ubmVjdG9yLT5zdGF0dXM7Ci0JY29ubmVjdG9y
LT5zdGF0dXMgPSBjb25uZWN0b3ItPmZ1bmNzLT5kZXRlY3QoY29ubmVjdG9yLCBmYWxzZSk7Ci0J
aWYgKG9sZF9zdGF0dXMgIT0gY29ubmVjdG9yLT5zdGF0dXMpCi0JCWRybV9rbXNfaGVscGVyX2hv
dHBsdWdfZXZlbnQoZHAtPmRybV9kZXYpOworCWRybV9jb25uZWN0b3JfaGVscGVyX2hwZF9pcnFf
ZXZlbnQoJmRwLT5jb25uZWN0b3IpOwogfQogCiBzdGF0aWMgaW50IGNkbl9kcF9wZF9ldmVudChz
dHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
