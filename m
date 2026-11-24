Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9410E606A32D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 12:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AadWQ/fG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=sgYmJYzf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bc/wEQTtqPHpFTVfSDVAClAdQVEuyaXiLZ6IiqRt/kw=; b=AadWQ/fGkyj9FqolwLoF+b1WkF
	OW4S6kYt6F8tmJW3TDCyMI5Xt/Mh9kuiGHCY7NgHhL3dX1ComDdLvjP16RzSBMtCTcDDDmD4GkXff
	WO1hqetTBI6ohNms9tEl3fMwEkFNEtr7KeHVIKiSwhLJhMcaAE2Uc0VBgkU0vU8wREgiWTULZHZ6c
	0TldNobV5unv7hM+gkIpY8/N5Cjk/lW6RtxRLg20PvBqUQkz34spuP6lzUDjKds7dvwmZU9y79Qfi
	IHhgE+ydmreQ4gbtLHnXqaF749/ZbeNfrxobEjRuw87UwYWiCkB+pt8/1HDRVYmfGLL/uFoWVfL08
	zIrfi+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGW-00000006Sk0-3b9D;
	Tue, 24 Nov 2026 12:04:52 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGU-00000006Sga-0tJw
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 12:04:51 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4bb6adaf0f1so38621105e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 04:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795521888; x=1796126688; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U5vpypoSKp4E8dfxVFDQ4mbg6cBO9LFnQEcbGDqjzgg=;
        b=sgYmJYzf2TH9glX3D/gG0B7Kqz/Dq6g/NYwi1DZrQpoLFHcZP7SsQ1pQBtCHsGbiEg
         /HzfI1fTDwpGssNZrrPr8Wapn/UEbOKvW6NqkCw2rWLwHPOCsYMA/XJ0mfGNgO44LQBw
         DoqNthFDxtPUzZYrDCesBlp/wcd1lAWUfEZMQT+GPEWvDL8jxoA9mP9/Xs2zv2q9ueg5
         NsVAcsZAUt0vraRJ+ubP2MJ8kSILj1GqwoAgNxUeKM/k8gP4PdTSgMOOeUAYtIG9hP2y
         pbFhSrk3XZ6QQ06BL5+91JrgI2kfA39Sg1xzbqnQZOcNoQ0vi88syqBzSaXtN0wiLYwb
         HaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795521888; x=1796126688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U5vpypoSKp4E8dfxVFDQ4mbg6cBO9LFnQEcbGDqjzgg=;
        b=uGgBPLtidSGsh+oOcHp30g6U9y8T98L60yJtX58EeGW+f1a+2YskP7cAe5yHVfkZUC
         x7vK8r8ohbmuFhDfbdTFxSAQuAqZdgCh1CqgcllWMVttGeRU+PanFxHYZWSR/AVD+u95
         Q5mwHc5DlnqXFV+uF3cb/6xVbGVImP92UCgBJBgZR7Z+qdTkflBNR9ynWJVNoloDAbRU
         4xa+sSn0rqQ0qIqZD5lALdsQMEMXTg/qfQj7mPb/wMuLcIvIdGHre2fxBwMALA97hSOy
         c8IbbeW9h9ALW9kWIsdH3nqVVw/UUrmTKiTkQMpSQv+OxL933NJko0pXzD2H2LLo9zQo
         PK7g==
X-Forwarded-Encrypted: i=1; AL+hErEDiutCjUC+D9sus+jO7cF+d2+5o+uFvzY8h6hu/cHXT/Q2HBNFsc5StBSdqMSru+BhaBTZsXZdETaHf754og==@lists.infradead.org
X-Gm-Message-State: APuU4Z87acHlNhYJDje6GJc9o4a+itjtWkGwmN2kJEeWQbEhdV2Sdd+7
	rwbP4caMeE+CzUTJdirHep6hED4jbKikAYAuvZL/HDzK4PD7Q5HIHC/0pcnmFsTMH+M=
X-Gm-Gg: AZFdTZd/EvnU4qeiIRRnU6lEIGAaTPQjj0jh3KKjI+oGeq0C/BDgDRMtPs+UfvTgSbX
	dTanroW/gSeWDmiCL2oYZURrbKolTzjeRXzBkQEeR/LVmDNMHumM1mPY9MqD4mbwQx1mVJtjtrJ
	O9acdAxFo2W9ZRTJW63Fk9Oq2i91I4tAVBkGai8IZRPkjjVEQeuYijctk2HEK9ZbYA90giX85VV
	DnZs06zkfSCct505e/u8jJpaiXAAIzzouELsbDC4Qi8wxmTEHlmJBjXQVjruSmUcVNnO1yni0Qw
	6q+u8YhArdGXy6vfH2qWllUxdCuPFEVHv2mAHPL3ejG5B0mCd+gm9+ws/zzwdeX3HzXCfOePhJW
	zjdfAnLdD4QybHptFxZwPiQgVSXUJfoB6Uax5a7UI5fyUQ+nniCjl02jydHihazkWqBh07p6jTA
	1LiVkzKBmwjWN5/nluwcI3rcPeZuhiaWfjTIhg6B6+06Scn/JpdTuKtNUAdbZ4J1YPqHUCIusXi
	NS11vjK5v+h4SZ9Y56qFnfP/jmwhBBYcl2Bkb1RdkaysOhWDOeMcFDfvkPHTryDY98juVIjHv+r
	1tuap4X/hds3LwcraB4irlRIZXYsO806usG2MRIkLzf/+xg0klxcUTyG85Oz+/q3GKEah+MBxjS
	ztAuabjXool0h4q9cKXqoU+wzXgG1dw==
X-Received: by 2002:a05:600c:4f10:b0:4a1:88de:9e8b with SMTP id 5b1f17b1804b1-4bb88807909mr320380315e9.5.1795521888248;
        Tue, 24 Nov 2026 04:04:48 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906635c7sm242405235e9.2.2026.11.24.04.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 04:04:47 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 24 Nov 2026 16:04:31 +0400
Subject: [PATCH v4 1/5] dt-bindings: nvmem: fixed-cell: Add Rockchip CPU ID
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-rk3576-otp-cpuid-mac-v4-1-d403b8a25113@flipper.net>
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
In-Reply-To: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4080; i=alchark@flipper.net;
 h=from:subject:message-id; bh=CS20fXFVzcjdeDfFRS8feA1q6Da6FDy2IYeGw5SpswI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSz1gb/cTkkOnU6z7Mg8WvBWxZIC6dIne6/+bxhV4vEh
 O9ytk88OiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjqE0sZ/gev0w9uPyqSnpO85MoFybvMdlLvja7sNeW/kFZ8OW6jvxQjw0v7PSl
 rmeY7e3f86W24O/N148I+y9L0na53zs3TaN7Aww4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_040450_309477_331D34B2 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Rockchip SoCs ship with a unique CPU ID programmed into their OTP memory,
and compatible bootloaders derive Ethernet MAC addresses from it, so that
boards with no dedicated storage for one still get a stable address.
Whether a board ends up with those addresses then depends on the
bootloader patching them into the device tree.

Describe the CPU ID cell with a compatible which also defines that
derivation, so that the addresses are available to anything which reads
the device tree, whatever the boot flow. Referencing the cell as a
"mac-address" selects the derived address, keeping the raw CPU ID
available to any other consumer from the same cell. Keep the compatible
vendor-wide, as only the location of the CPU ID differs between SoCs,
and that is given by the reg property already.

Plain "mac-base" does not fit: the CPU ID is not a MAC address in either
of the formats it allows, and its offset argument is added to the base,
whereas the bootloaders XOR the index into the last octet.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../bindings/nvmem/layouts/fixed-cell.yaml         | 33 ++++++++++++++++++++++
 .../bindings/nvmem/layouts/fixed-layout.yaml       |  6 ++++
 2 files changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml b/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
index 38e3ad50ff4f..ad38954cfb59 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/fixed-cell.yaml
@@ -19,6 +19,18 @@ properties:
           addresses.
           It can be stored in a plain binary format (cell length 6) or as an
           ASCII text like "00:11:22:33:44:55" (cell length 17).
+      - const: rockchip,cpuid
+        description: >
+          Cell with the unique CPU ID of a Rockchip SoC (cell length 16).
+          A consumer referencing it as its "mac-address" NVMEM cell, as
+          Ethernet controllers do, refers to a stable MAC address derived from
+          the CPU ID rather than to the CPU ID itself. The base of such
+          addresses consists of the first six octets of the SHA-256 digest of
+          the 32-character string of lowercase hexadecimal digits representing
+          the 16 CPU ID bytes in stored order, without separators or a
+          terminator. In the first octet, the multicast bit (bit 0) is then
+          cleared and the locally administered bit (bit 1) set. Any other
+          reference to the cell refers to the CPU ID as stored.
 
   reg:
     maxItems: 1
@@ -48,6 +60,27 @@ allOf:
           const: 1
       required:
         - "#nvmem-cell-cells"
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,cpuid
+      required: [ compatible ]
+    then:
+      properties:
+        reg:
+          items:
+            - items:
+                - description: Offset of the CPU ID
+                - const: 16
+        "#nvmem-cell-cells":
+          description:
+            For a "mac-address" reference, the first argument is the index of
+            the MAC address, which is XORed into the last octet of the base
+            address. It is ignored for any other reference.
+          const: 1
+      required:
+        - "#nvmem-cell-cells"
 
 required:
   - reg
diff --git a/Documentation/devicetree/bindings/nvmem/layouts/fixed-layout.yaml b/Documentation/devicetree/bindings/nvmem/layouts/fixed-layout.yaml
index b01567f99284..f30166109a7f 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/fixed-layout.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/fixed-layout.yaml
@@ -56,6 +56,12 @@ examples:
             #nvmem-cell-cells = <1>;
         };
 
+        id@200 {
+            compatible = "rockchip,cpuid";
+            reg = <0x200 0x10>;
+            #nvmem-cell-cells = <1>;
+        };
+
         calibration@4000 {
             reg = <0x4000 0x100>;
         };

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
