Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D480EC111A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 18:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=arsmCmH45vuxpC61wMl/ou/qRBRgt7ysJ8DHX6sXztw=; b=BaQ8az2Lj928+1
	6moSmzsXf2NPSoKphvGSuthtw5QG9Ue4dt7wwhzLIAsJZq9WFlKsk4YTXKYpRHy+FYKwH56RZOxeo
	W1/PqlUFGadgt5PFD4mzsFTbA3eEco+ejw2jKzthI6mmUHmFzlX+RSkuVm+P/YgbgIHKRI5UAAgkz
	jk3Y9N0QCmGUUDo2rWpMDdf625SxqmVooW1xgS9K7hjwZErZR3GB+VZQjaRmVYj/vSBeQF+V2x9Oh
	mUDZLftq5PY7hhkPK8dSnxbNP3NakzgDGCHuVE3HaDwnxsKTbiAxsCDVTFh28MM21dw4A6uegRBiC
	3UkUmPj9DAlxwp/ufpjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaez-00000000rqd-3UTu;
	Mon, 23 Feb 2026 18:27:57 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaew-00000000rpK-1beD
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 18:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771871271;
	bh=IE3CDoGvS1e1ziRaLdXOuivPtrDnoJiPNBALZlwZclw=;
	h=From:Subject:Date:To:Cc:From;
	b=MmF4Zosd7LLRCW2R8gLgW+kI8s6lXtSI4zVlPGlR/n1Ntfhfmjj3vbaEhbCvDDHyT
	 YJymhcIaR/zMON+C3x5A1fzh41O4U8HmmFKXRM48gH5paeWDh/AKPbTDv7QJDnMjXS
	 XdUo2LlUaVDnH6xaUUaBD34SXZl22QoGCqQmaY7yxoizvpGDFK8zkkl4mTregiHBfi
	 dOLfi5faDPcP6Bl8mCGjhWVS5pW2Kal0uH5HmPP96emlyO3kNE8SXVeGt9338NpwDY
	 gzFxX/IAWQ4j5AFDzAowioO2xpdp/aBqkFRCUi2beXZZpb4iCFYZopKWjjftze3W2w
	 UjHhDXSMuizcQ==
Received: from jupiter.universe (dyndsl-091-248-208-033.ewe-ip-backbone.de [91.248.208.33])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 43CD717E069A;
	Mon, 23 Feb 2026 19:27:51 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E3659480024; Mon, 23 Feb 2026 19:27:50 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 0/2] usb: typec: mux: avoid duplicated mux switches
Date: Mon, 23 Feb 2026 19:27:37 +0100
Message-Id: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABmcnGkC/42NQQ6CMBBFr0K6dkxb06KuvIdhUcogkwBtWiAQw
 t0dOYHL95L//i4yJsIsnsUuEi6UKYwM+lII37nxg0ANs9BSW6nVDaYtoodhXqGZY0/eTbyAlla
 onUFzb60prRO8jwlZn+13xdxRnkLazqtF/ew/1UWBhFJKjpbe2Id6+dD3rg7JXX0YRHUcxxfBa
 Em3xgAAAA==
X-Change-ID: 20260213-typec-mux-duplication-fix-ba5e58f6576a
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1209;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=IE3CDoGvS1e1ziRaLdXOuivPtrDnoJiPNBALZlwZclw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmcnCbpEtNIRhMXwyPQwppKb25UhMTInVSA8
 ZBb9NVBJ4KQxIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpnJwmAAoJENju1/PI
 O/qaty4P/A0CPG8UT80MqDn/+NYTsJo+IQvqSQOZbk0vpWWAv8b8NCVcAJc5jIe3WIGuedETR/h
 SpFAwflYge6HBIRZE/1PHvK5TATPRhhb9RNv9bASBqcLJW0ZAlrqgN9jciKFOqslsWWEXkyLC23
 3fZIxEO9XiZ6xUhlm5nzwUQyU2xSWs/4ajIxbG4Ho95yPR7A8XcXmqAMc3R4Qucv3eXRSWdbSGx
 GuYpfO+2s7fxVcQcrOIfeV/f9E2rj0u2sDfGgbbRAsMYYZ0QM1Iim4JuWwsbwNsdTmUnSD3J6tB
 Y+enuGeiLFNQEbEm2xDY3NLWEd4sSUu0NtLE6sBWlVYgh0kkATO2HapkrUifL6/uGm6MpzWSsg3
 eqUDBGDX4PFUYIxDihq8pf0qbttB0k7ceGIzKI8YFGofyQmCb6CsnHG2gHO+L0BnPocwHN1STad
 78QVEmsyyJKTTDCw9NQUNkpZrQ0KLvm+5HBmHjGbOSZwfwOQJpV12/UET9opGF6aLkIYVVRklJG
 +U8nI9sx2PEDTAR8WgdssXYhm3k1DxI0f7VdWWq8ZY5yLwh9D5mOJa7DD/rHEZKehADWz0P46K0
 gpE5yWSBnWFj2u9sYh0e9dNhzAyZl9pOTgs2HcXYpe0qtJk7G3fwdUhjQ0qlHbOoZvFwVdzXf7Q
 8eJ5apFcG/ESmYFtiaNskWQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_102754_600667_B99DBB89 
X-CRM114-Status: UNSURE (   6.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recent Rockchip SoCs (e.g. RK3588, RK3576) have a PHY, which
handles USB3 and DisplayPort as well as orientation and lane
muxing. By setting up the DT graph from the USB-C connector
for the SuperSpeed and SBU lanes to the PHY all mux/orientation
operations are applied twice.

I did not add any Fixes tag, since applying the settings twice
is not breaking anything. But it's confusing when debugging
USB-C issues and obviously wastes some CPU cycles.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Changes in v2:
- Link to v1: https://lore.kernel.org/r/20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com
- move the dropping logic into typec_*_match() functions (Heikki Krogerus)
- rebase to v7.0-rc1

---
Sebastian Reichel (2):
      usb: typec: mux: avoid duplicated orientation switches
      usb: typec: mux: avoid duplicated mux switches

 drivers/usb/typec/mux.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260213-typec-mux-duplication-fix-ba5e58f6576a

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
