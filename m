Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD431CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 22:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tIsGYPYVjTP34FBC5zv2v1ExuH5pxIMkdKg/RwUZXg=; b=kIjWM39k6j6R8y
	tDLsaVf9ve1kGxgHESWF9VapRyJZIG0HDn6Lzdy3IAf746G37VM79VZJwanCzGyb1LmRzDaB6Azw7
	RkVTytxowR6KiT8VlYYmNSsm3rePh0fiQXTz9k8JpRAfXAdmZRy2LWmKIXb/3/xFEhSoJYKDOjRw6
	Wq94lZfD+1o/dR4kBuQMO+KTfMf74H50BMVYyQNaQgxDVXhqO4lYF2dnjFD1YqqMGuS7jvRb1NPwQ
	/pHeUlB972b9vYUlqIzXmo1/KIWh8vA9BCtYE6tpNnzTElPDuLX0kPBJevTVu97+Lo9KI+GIWkqzw
	Aikdtt52LC2Ism+hr1FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vC-00000009cTg-2G3K;
	Fri, 15 May 2026 22:22:18 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0v9-00000009cSA-3aeE
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 22:22:17 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7e568ab0bc5so415161a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 15:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778883734; x=1779488534; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nzgPino86LaQeP8b63WXKQ8PXEYI7/0fnGLVDfvDc4M=;
        b=pQSaRMn6Z0o5svdRMqIRln8hgi343+sIk6tZkb1sHhtWwlu55Prj0Bq+XJo/MJuFPB
         1BhMXPdNkwxWglEZGJgzv1jz8+9xBMaPUPUPjhakOyHVL7fx/dzcs/7YDapC7RsESvi7
         OeUYXQbu90vDvoLTBvU5InFY5fpm+Tj5Pla9nNtOAqwyb59WU+aTvEjFLMLwgeeaqhnf
         IvrwoblRIiZXlB75tH7YcVcVrOQzjkDZzUi5TN3EGNUMP2idD4vgZJjvtY3yG/ori0H/
         yi3AkiInu91GDIYcgxbqMX2cFaNH15xmROXuqqWfrzA9XssJNJfzmB7gm6ZVS0wM3/cJ
         BEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778883734; x=1779488534;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzgPino86LaQeP8b63WXKQ8PXEYI7/0fnGLVDfvDc4M=;
        b=CVmO1+aQ2DTPGmsJBucXEXOZQLGISCGHUPMaspuIBsnhMsAQbDHbhUla03soMR0FA9
         DfcmeS384oKvQLZ5yF2rD7YAhyeqipEfVtIGgYhZIXuAkYl2wpm5Uqvu4vMakneWbNBK
         rtmVPZPyPSP33BOw+PkFWNA+xVcjeG7dsVcyjS/m9aTCrS4dbT9825lqfQJ9SneQkida
         k810iaOP3+jSQ7efXP6rYzkd6upKlYq8CNg26NnyPjrXMRUaFloHVHDLefbBOvzcIk1L
         grM/w1t5dDvuWLyrJnja2LieMc08ZxX0BRkKBeW3aLSPdmi8woeodLiefMvbus2aBKgr
         RzbQ==
X-Gm-Message-State: AOJu0Yx31JoMvkEUT8zNDt8yYgFSGmlgkwsZlyYjUPiTCNrpI0KE5stY
	YsMfGz5rdg2ltUxJ3FsTSK2HUs/fTUtFsaYsmc5XuiHtHmK6gBRTb0qXti0WqnNn
X-Gm-Gg: Acq92OFnR/AMdUsV8ZMvEqTz1MRNH46/1hh9Usn6JzOE8S1hupFpmnBzgpkfpHqeYtr
	h8G7sfiwx33YLtlwVAXAnvxBet1WYd7TjHBkgbbNfriSaakkjd/bCiiS4n+BES12hQ+gsNG6izP
	AE7WMIXH2RI9ak5M5FsLYYH8AlpJLkMzx3qkZszeprpb7Zruf5IvSV4apMviAkUR7LnQKDsbZjt
	IjOjrePAk/2633U9MaPlGjh3LpJ8+OKBZIrGtfQNoFMVFj9Vfnou4JIxDAe+kGDkNvLTmlfyn4J
	VzbvnXpDE8v8H9BqH8R1h4hH365g3RGKMlD54VELEaQ+oxD+55cPGo3hQ9YXSUbdjhed4GLx8WX
	uAPkfuoFy4hEBTQPHUpFVfzUZWXlAOFbyWy8X8UHOFWzGBOoTUE7xHpNpDKJcyFTtV6E6xQUaxw
	tGO2TCutYOiRsBPp07e9XXwcsmASPXya3Tp8oRy5yyj4XE4j6jGgB8
X-Received: by 2002:a05:6830:2a08:b0:7d7:f70b:5b0e with SMTP id 46e09a7af769-7e4a400124dmr3371261a34.12.1778883734287;
        Fri, 15 May 2026 15:22:14 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e568c0d889sm980764a34.9.2026.05.15.15.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 15:22:13 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/6] Add Anbernic RG Vita-Pro
Date: Fri, 15 May 2026 17:19:41 -0500
Message-ID: <20260515221947.299229-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_152215_928842_00B4264D 
X-CRM114-Status: GOOD (  10.17  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Changes Since V1:
 - Updated documentation filename to matche compatible string.
 - Corrected order of allocating IRQ in charger driver and switched
   to using devm managed function to allocate work queue.

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: document Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   64 +
 .../power/supply/sgmicro,sgm41542.yaml        |   99 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    3 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1317 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  291 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1035 +++++++++++++
 11 files changed, 2835 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
