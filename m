Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C87161125847
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 16:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pg6AIoSOkTw0hfV3bbBsDRFrcTIzOzZcwkvb2Twfwi0=; b=Cn3X7skcbaA6rf
	Xt1CcHx3gs6slM3h6mHbg0u9x5y7tKT3xktc38/CUySsKk7P6CF5dgIeCNmhhG/s//OnavlVdWjHD
	wjVj9xAtI4XFnrP9IjA5SfSYbVmp1XpQUasGP6M2zn6wsX6YNpVrELJrX8HbDZfTqLTxiqayEIH0v
	2X4rog3T+iCPoBXbvcuWtWpHZD684qZglpfYDZ4sg+7I1QhZUifiFCrfC7frrfTYeeT0/WiDRYXSY
	k0trHH+JieguvxNfIzdVh7nkxCxPeaeNpATJgy6RjiYVqWcOttE5iMa83S3Ld5dhiy96FDj18Q/C6
	h2ZS9CeYwi7xuXdfPyiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIs-0000000BuU0-3bIu;
	Wed, 11 Mar 2026 16:20:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIq-0000000BuT0-2mx8
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 16:20:57 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so355565e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 09:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246054; x=1773850854; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nX2VLMMxzsqHC8tfGhodSpGERlVf9p+B3j0GpKk5w2Q=;
        b=BQ84jwJyAdhfcCQbF7O9qINf75e34mEMMABfq6778PNIC0ZI6jCfp14sCFXLyY25wG
         LP0D4SrfdDTpg4J4anm5H41xV+BrG//VUc+mSKnwDLTdte2zW8E5oVzYZLRwG6f7lub2
         Gzxv65Klfo9CpXzsTh7QloODFOi+lubRrIO8AsaWx4RdH9FPxIsF3tAlh3cpia1oD0iP
         aOf8xRlKVhB6WjSloq1OY3o0iP7lm2AQV080zmKO6y1wNxLm7cUJozFe81SjU/ucN80M
         qO8esXPX++1c3jl2i9eGSl6lx/suOiaspJfsX7YdtVnxtOiZB1zIkg2Yqc+4pRvkQHni
         y2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246054; x=1773850854;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nX2VLMMxzsqHC8tfGhodSpGERlVf9p+B3j0GpKk5w2Q=;
        b=VIO1IniUANrCwRUdro7ivcs9MbH7fFg4fi0mvL/vaNN5hazaMS8n3HuZvrt5Mie+r9
         bul5sNZznEUTu+LAj7nAxEZgOjdrSbseHyFrDPVh3FncibojGKV4VRDjgvEzRlB1vtpO
         vcz48G7OAZiL9fLV9HvWTuvZmubNCCmOD80zYy+9xo332kbf+UkibDMw2Yo8iRvu+khI
         qo/czebXK7EvcK6XgN7HNqA2Xxq+WNehLFki1TQoCk4YUUViq/3LFQcDcM5Tl8/DeoT4
         80kYm12uA8AU3Tpjqpd8DNKpbx+/WnCIwlnf9a41HlRrGsG6HkE0HQIgmcDeJOea2KJ1
         Dy0g==
X-Forwarded-Encrypted: i=1; AJvYcCUIdHOptK9UeGSXpDcjaZnLzIzPi9l/dfSQrAC9vcqa24hiDFEVmrHPaAnfHfjYxETKZVdEGgfRIUfaC2T83Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCcAUblGwyuNPM6URnVcyZC+SbIG9QFL/RYuioxfd7dNPqO82U
	hVOPgLpc/FdWLd95KUm3g7pMK/+ZPMl7tdVR/12YH7w+ydU7Dwl/I4P6S+YfXbG56+s=
X-Gm-Gg: ATEYQzz/30CPhkwbCQe2z356UYTKdQLXMrJZscULTJ3rSp0Cnqj2rnG3Y7EzLHEc3uS
	uOeuuwdJLqlPVoMnjXckcaRN29M83+SGT2CqXChrn4roZAe4iAlRTpcmwNIrkrJsydALvrtYTtG
	2KzdmS7vjMTrg8rJlYJtnT4n1E13C1tvxt+oc0z5BZNMXAJWDfeuzzqEgnxJr53r+bnwpXeXRXD
	LrhgTsrLhOxGMtU3mWGlbEB/eSv9tsxssU41/D5xCU9sPjCNG1ZhNCgYJKQ3iYqXYn8G9IdjTT5
	KffH+FVlKUZsNUQx2PjCPW/ssBi6X1AL4TBNLNlyR2F0u22Wmc4TwqFpnlSyFFsnj021sHFxny7
	/itw4E9UfmiRUobwQS2rdfUq1PHZHoFE24c5VJZQ2ZSv8WNsZeA9QolqOwtrILg1hm9+O5JzMf7
	irJ+PpXC56NBq40a+h1ATD7ZuV1bJqUdQPlkfTaUk8YPrcUK8/C2roM4xuhI7UKD7F7UnRjadkN
	6OKRQ==
X-Received: by 2002:a05:600c:3551:b0:485:2f6a:6ed with SMTP id 5b1f17b1804b1-4854b10cf6amr56781205e9.28.1773246054111;
        Wed, 11 Mar 2026 09:20:54 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:53 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/4] Add HUSB311 Type-C controller
Date: Wed, 11 Mar 2026 20:20:43 +0400
Message-Id: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFuWsWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NT3YzS4iRjQ0NdI0vDpKQkw0Rzc3MzJaDqgqLUtMwKsEnRsbW1ABz
 u0vpZAAAA
X-Change-ID: 20260115-husb311-291bbb1a7776
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542; i=alchark@flipper.net;
 h=from:subject:message-id; bh=VHojyZCXSGWyb/puDT/r6I88U1uPu/dDZCryYQLDqvo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJZ8/M+GRJaJPHfUTkjMT1jK9rauZZfKXK2Pb3kcl
 z5YZe1zsWMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICpLtrK8L/arcH8bLSs+Jd756oyCoO0lm+sYTfO/sziz2gqHBi4/xcjw4wjfx6
 s3bJ0c3POs4bEH3eZFFQfHNkbMNVsMW/93sx5zjwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_092056_708041_6CEC629F 
X-CRM114-Status: UNSURE (   8.78  )
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

HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 EVB1
board and some other boards closely following the reference schematic.

The existing RT1711H driver seems to work fine with HUSB311, and there is
no public documentation available for HUSB311 to identify any meaningful
differences, so this series wires up the existing driver to treat
HUSB311 in the same way it treats RT1711H.

This also enables a bare-bones DT node for HUSB311 on RK3576 EVB1, but
currently misses the connections graph for the USB SS and SBU lines, as
those might require the USBDP PHY ports schema to be updated first for
proper DP AltMode support as indicated by Sebastian.

Signed-off-by: Alexey Charkov <alchark@flipper.net>

---
Alexey Charkov (4):
      dt-bindings: vendor-prefixes: Add Hynetek Semiconductor Co., Ltd.
      dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
      usb: typec: tcpci_rt1711h: Add support for Hynetek HUSB311
      arm64: dts: rockchip: Add HUSB311 Type-C controller on RK3576 EVB1

 .../devicetree/bindings/usb/richtek,rt1711h.yaml    |  2 ++
 .../devicetree/bindings/vendor-prefixes.yaml        |  2 ++
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts    | 20 ++++++++++++++++++++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c              | 21 +++++++++++++++++++--
 4 files changed, 43 insertions(+), 2 deletions(-)
---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260115-husb311-291bbb1a7776

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
