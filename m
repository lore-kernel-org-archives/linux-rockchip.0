Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642D1C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 12:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TESQzDJSTU+DbQUvRdQ68LefK/OViC8O395i+at9dq0=; b=nERXHZHj2zyV71
	yG9tzhd87yD/gdNpxKSGpKMmy/qswGj0bDABWUSJ6auJNbQZO1z+/YEV/X7Kz0h2zVl3ISRPddZHn
	2sZp2Dobp+YcWRR9q10mCE5O3s+plADRF3XrN3bLggeUyWnV6deLQHNlOa4tZP5sWJ4LHGxqj+MNI
	FD3hGdsQo0GMd1xi0LnsBDAuUA3tL2S+cYs587y+rJ8mteXIn4Aof4ReDtREpvCpLdCHnAmBz6lUx
	ProWuoDAvDc5SnLzuRAtehQEknDPbiJvmzfMJ4oOS2gu9YsT7ylLNu1AHyZBczwRtkpd7XcEq+Rzh
	wxkhN9EqjYhYX8ldV+aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6rh1-0000000Fw7x-0RKN;
	Tue, 14 May 2024 12:55:43 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6rgt-0000000Fvzl-0QrA;
	Tue, 14 May 2024 12:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1715691336; x=1747227336;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TtS1WG3/Q3LLAhInBIdougKJH0z4JUz7Ux33SsRa9yE=;
  b=k2GeW4NjD3vgNcuApbkLF929xvDQlshgeQxZBKjWcmqC4tenmF/K2L0T
   pM/f4IFfOzj9Pwxut9rKgRzbb/aM0sFD1TIgZ0yOsOmAecd1U0L7eca73
   f7RtGirAyDaq6JR7WrysmQ3M2EGbwqvVNn5cy9LjEeMfacOHRHGI6EVpU
   gg0fOJgLktkvYKr7nF+rsrSqVLka0VB1etA0AzaDMxDLidwMsXlK2N//+
   SoRZ6Nlv+fOHX051AvHhqJwXSXVfjq/rWWsF5wbiEvZoUtKJzIvOKNwxd
   qxWErHqiagUqTnkN5P+sDhZ3pATy4XGAqusDIW0xGtRbhTPwhuaOzeJ+U
   g==;
X-CSE-ConnectionGUID: pxv7CRaUT5+DrwCWIVuEIQ==
X-CSE-MsgGUID: 51bzuV6iTymSBs1G8EGcZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15458669"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; 
   d="scan'208";a="15458669"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 May 2024 05:55:31 -0700
X-CSE-ConnectionGUID: qFVOKpiETzCyVbCt/BdRrw==
X-CSE-MsgGUID: v/KMMABXTRSKxjdorKCPnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; 
   d="scan'208";a="30507442"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.246.91])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 May 2024 05:55:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 01/11] drm/rockchip: cdn-dp: get rid of drm_edid_raw()
Date: Tue, 14 May 2024 15:55:07 +0300
Message-Id: <d0807fbde7b0bd06ebfcb5df5c3b1cdad4c4ef84.1715691257.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715691257.git.jani.nikula@intel.com>
References: <cover.1715691257.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_055535_210978_13BDDA4D 
X-CRM114-Status: GOOD (  11.23  )
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

VGhlIGRpbWVuc2lvbnMgYXJlIGF2YWlsYWJsZSBpbiBkaXNwbGF5IGluZm8sIHNvIHRoZXJlJ3Mg
bm8gbmVlZCBmb3IgcmF3CkVESUQgYWNjZXNzLiBXaGlsZSBhdCBpdCwgbW92ZSB0aGUgZGVidWcg
bG9nZ2luZyB0byB3aGVyZSB0aGUgRURJRCBpcwphY3R1YWxseSByZWFkLgoKU2lnbmVkLW9mZi1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCi0tLQoKQ2M6IFNhbmR5IEh1
YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRl
Y2guZGU+CkNjOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+CkNjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF4aW1l
IFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Q2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8IDE2ICsrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2Nkbi1kcC1jb3JlLmMKaW5kZXggYmQ3YWE4OTFiODM5Li45MDkxM2ZhMjZhYWQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCkBAIC0yNjYsMTUgKzI2Niw2IEBA
IHN0YXRpYyBpbnQgY2RuX2RwX2Nvbm5lY3Rvcl9nZXRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikKIAogCW11dGV4X2xvY2soJmRwLT5sb2NrKTsKIAotCWlmIChkcC0+ZHJt
X2VkaWQpIHsKLQkJLyogRklYTUU6IGdldCByaWQgb2YgZHJtX2VkaWRfcmF3KCkgKi8KLQkJY29u
c3Qgc3RydWN0IGVkaWQgKmVkaWQgPSBkcm1fZWRpZF9yYXcoZHAtPmRybV9lZGlkKTsKLQotCQlE
Uk1fREVWX0RFQlVHX0tNUyhkcC0+ZGV2LCAiZ290IGVkaWQ6IHdpZHRoWyVkXSB4IGhlaWdodFsl
ZF1cbiIsCi0JCQkJICBlZGlkLT53aWR0aF9jbSwgZWRpZC0+aGVpZ2h0X2NtKTsKLQotCX0KLQog
CXJldCA9IGRybV9lZGlkX2Nvbm5lY3Rvcl9hZGRfbW9kZXMoY29ubmVjdG9yKTsKIAogCW11dGV4
X3VubG9jaygmZHAtPmxvY2spOwpAQCAtMzY5LDYgKzM2MCw3IEBAIHN0YXRpYyBpbnQgY2RuX2Rw
X2Zpcm13YXJlX2luaXQoc3RydWN0IGNkbl9kcF9kZXZpY2UgKmRwKQogCiBzdGF0aWMgaW50IGNk
bl9kcF9nZXRfc2lua19jYXBhYmlsaXR5KHN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCkKIHsKKwlj
b25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZkcC0+Y29ubmVjdG9yLmRpc3Bs
YXlfaW5mbzsKIAlpbnQgcmV0OwogCiAJaWYgKCFjZG5fZHBfY2hlY2tfc2lua19jb25uZWN0aW9u
KGRwKSkKQEAgLTM4Niw3ICszNzgsMTEgQEAgc3RhdGljIGludCBjZG5fZHBfZ2V0X3NpbmtfY2Fw
YWJpbGl0eShzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHApCiAJCQkJCSAgICBjZG5fZHBfZ2V0X2Vk
aWRfYmxvY2ssIGRwKTsKIAlkcm1fZWRpZF9jb25uZWN0b3JfdXBkYXRlKCZkcC0+Y29ubmVjdG9y
LCBkcC0+ZHJtX2VkaWQpOwogCi0JZHAtPnNpbmtfaGFzX2F1ZGlvID0gZHAtPmNvbm5lY3Rvci5k
aXNwbGF5X2luZm8uaGFzX2F1ZGlvOworCWRwLT5zaW5rX2hhc19hdWRpbyA9IGluZm8tPmhhc19h
dWRpbzsKKworCWlmIChkcC0+ZHJtX2VkaWQpCisJCURSTV9ERVZfREVCVUdfS01TKGRwLT5kZXYs
ICJnb3QgZWRpZDogd2lkdGhbJWRdIHggaGVpZ2h0WyVkXVxuIiwKKwkJCQkgIGluZm8tPndpZHRo
X21tIC8gMTAsIGluZm8tPmhlaWdodF9tbSAvIDEwKTsKIAogCXJldHVybiAwOwogfQotLSAKMi4z
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
