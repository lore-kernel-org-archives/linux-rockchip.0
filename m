Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEA0606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yzxe4A1k;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=sTEOR6JA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yVR7h+JMCZ2jzER3vxLH6wGkV9HyB4BBiv+nRo5DAE8=; b=yzxe4A1kRqOLpMPLZs3AbZ9d0j
	k3DKtWpsNQz0BFzK3+aAqYoa1zwEwPSQzmyu+PmtoxO5EoQuz5ZkXuGHxJx9PJl534LpHixXK/9vW
	fHkSTFzyhkPILIpS2tT0xVkVbSWcIsxvCcc2351+NGUMs6lSTK0fvlpB5eSr9+mzvIYVGMH1yUvGi
	s/cV9aftRr1aj8nQVcNTrayyu7y4OgQn217rEUU+kfDH91v4Krnd1TzHE+IQd4Jl9vW8IF1q7S7zO
	PZHNfz4QODeJ2f8QbKEt+z6FOPFgGEAfrkFaNXX+6g0MTY+fBcbTbPnm+DN/ol0dQulLOWqebRMUr
	qUtBbx2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoP-0000000319t-18gj;
	Mon, 26 Oct 2026 17:48:45 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoM-0000000317Y-2VxU
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:43 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-4932b13c4ccso1683002fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036921; x=1793641721; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6xOB+Y9B7pCNByydgjtkPnm7V5ov68gr0sv6XngJ0mM=;
        b=sTEOR6JABiAXS5UwhoFfwxlCkhWtyKv8sCVRL2zvIY3tFDtpjI98a1pPFq9Eht5hLo
         vYuLyeZB/BAtemrXPafpVYDgG++HHBKZ2o2AnA1nXsZ4FM4b7ARFK7icG2WH945LgnHs
         Dnh7Ldy/GNkRG2AMb2Mpzu8o73aplnXdR0ZU7vZVtZjYM9FuXepBhK7+bnMLL4tuykNh
         LjNu8iPNvayGKM3sBvrd+9G4i/Bwu6A1XHhsMPB9dk31R/nmKyv2BEDWqzCkvxRYJMsv
         zSULt4vHt1SoZXCB2jIGD3LcxVfMIC6YB2nTRWO5j1QOCwMDjaKC6ygKlL1cMxFDq9DC
         6CAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036921; x=1793641721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6xOB+Y9B7pCNByydgjtkPnm7V5ov68gr0sv6XngJ0mM=;
        b=R0cLrNvezMtCSGtqtpkNwDtVFKZzcInq9fSl9khB4/BNNiBcBSs2FwFi/0/MBDiPyd
         p+5ndzrzyadAcNKj4invU9l0f88hCyTC9uwW78+l6T24fUKji44q7KEu2ODwU6tUHSWx
         LjpyNn7Bp56IRPBo6CH1eAW0hziVUot/rT+ZSUcF2zBVUoXCf0ayY9vKS97pHealvFX4
         7oLa1dkx6T26CudQKx1Ru49+KFpvY+45fz0kd7URJBhOrj786PkCvd5ZefF4+yp110R6
         rgTc7oR4KA8Y69x0dv5nptfDyUOtfRy6zpdW6kBl8dVwWoPnHVi4lUau4VYLhFt1aGMv
         sCww==
X-Gm-Message-State: AFq9FYJGEJtTUynq6rvRSdPDfD7mDwx0HJiDA4cmDw4CnMbEzfih2zvy
	NAWrMVCYiXxE/szN4xv7AJekWWe5iX4AjsHN18k72jB5P9+BG8W64/Fl
X-Gm-Gg: AYBFou3mHjuRoBLHQY2FS2KL8y22XVfueXYzvm2Yf709B5xlbUWRGL78/HxjQ+DbjPP
	Qypnuo0cNDKM3sFQpg+aQQ+enfDR8M9lMaBeDWrXfiwWXUW5j6Cx25X1tRPnQfW0V0aWRIMDLNZ
	qQ6UNS/wcAuG1vBcwBfRx6pjDgIcgJZQTRw9rp6oNpOdNnfgHz+kAKmW0W95Shh/6RwZ9pWHtEh
	s60diPia8OAUfUoRP7oATMrhYeSzMho3Uc8lacrn8xUOcB2r6MbIWw4t4Fi7C195yrddbkspJNA
	rx3Yz4ag9PZEjHILSzcF3GQI6OiIx8qMM+6bwiEZ8xwhIypsCttF8b+2K8xMD3k0Ya3qg6zFWXY
	jXrqVt022wGtD7WpVx1s+XYa8RIBNT8lYRo9z7DPIX337MM5TZ6mqrA5dy5epz+Lt0VcaeAGoWc
	bR1XUcPgCDn8JZIZAxutX+2eIS5+tadtIQr5Lb7S/pgdHt6Hp/2OrAzjJQN6PUvoALzSKkqlhxu
	nol6SFGFp1zpVgwc2ytuJZ69VIFDUT75F/XgqZoxLa1mZWMr4D4gnA0oVmuKBaID7NdXr71o6o9
	egdmYl+innA27kYvk7vKjqV91LDQ3uvhXe0rALtEMDLVj02JJkQ=
X-Received: by 2002:a05:6870:2183:b0:48f:e25f:1dcd with SMTP id 586e51a60fabf-4a83f686b7dmr4595707fac.61.1793036921182;
        Mon, 26 Oct 2026 10:48:41 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add rockchip,gate-function-disable
Date: Mon, 26 Oct 2026 12:48:33 -0500
Message-ID: <20261026174834.1652309-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026174834.1652309-1-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104842_649109_38A56957 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add a boolean attribute for the rk817-charger to control whether or not
the system power is shutdown in battery off mode. The BSP kernel sets
this value unless a device-tree attribute is present, and this attribute
is to replicate that behavior.

Fixes: a592aa3a2a8c ("dt-bindings: mfd: Add Rockchip rk817 battery charger support")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Suggested-by: Zetarancio <zetarancio@users.noreply.github.com>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 2cb6d176a84c..4cf987fe763b 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -148,6 +148,12 @@ properties:
           Value in microamps of the sleep filter current for the charger.
           Value is used by the driver to derive the sleep sample current.
 
+      rockchip,gate-function-disable:
+        type: boolean
+        description:
+          Boolean value to prevent PMIC from turning off system voltage when
+          battery voltage is shut down.
+
     required:
       - monitored-battery
       - rockchip,resistor-sense-micro-ohms
@@ -381,6 +387,7 @@ examples:
 
             rk817_charger: charger {
                 monitored-battery = <&battery>;
+                rockchip,gate-function-disable;
                 rockchip,resistor-sense-micro-ohms = <10000>;
                 rockchip,sleep-enter-current-microamp = <300000>;
                 rockchip,sleep-filter-current-microamp = <100000>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
