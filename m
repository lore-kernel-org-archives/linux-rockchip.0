Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09640D3ABCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HxAOlZ1RXTP3vQUl0+2Pm7DMV1GQDj2yTE5+32hnUe4=; b=m8YG4EILYwDK7B
	Goy5BqQJVxw7tBwhr4oOZ4c8u5xV4jfZ1h9a+DY9KY6PTJmGA+ypBKh2Q9GB1PNe8kuchMsb79og9
	+xTNqUHOIvN++kCQlCkhYWixLidOeugMCjqRqsc5iUZupxXNUnqxisaj7L3CPszwAshZ8l/zwqwOF
	3zL7YhhLsyIb+mK3zrjF3HSSc/DSZafOp3/Eh9iw9RbTW/3QgRyS3WQS+sYsHqGAcYCBSeRUR1AEh
	oCE3pfGmW0dwEOjRIOXNXkQEBBnKTIT1AyLH8QLBwJGYSDDVAVlLq1ePQ1YMhcVPrREW7OAfpaG5c
	d9x7Yai6GcVZMSBEGjiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAXcl-00000000d9y-1HMq;
	Mon, 11 Nov 2024 16:50:47 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAXci-00000000d8a-0r9T;
	Mon, 11 Nov 2024 16:50:45 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-7c3d415f85eso548335a12.0;
        Mon, 11 Nov 2024 08:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731343842; x=1731948642; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EdWdARSqH7VvgDN7UrZIngwwkVF/tqPP+awpBPVeunA=;
        b=P5PEkYMLAPJaizQE+Ojev/1PNEtvUHzfZOyCKS8p/ZgfMQ9t+LMsVOCx41ufdeEPYg
         FskjmUg0BfOCH7IHca/ameU0pbt1tcmQZB3l6FU7/7P53eXq/2f+jTSj0Ez/4gEiXvpe
         rTY+AaX0l3pnUJD/CRV7s3kcXQnbFLwT4EgabPSY9EhTdlwoayu5qwXpcP9sLAgW7M+d
         TNEFUlfa+cGNzt2JDmIGI5FNlD6uVAErjv0RHMGbRzyaH24nbFqKJ04ImjuveJB1/7eU
         isKjnI+BdTtoEZsbkKZwxZW9S3KDgH9DTQCRIyVTl3TcOmJnSF69prdIqe3UFHHhleBN
         Warw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731343842; x=1731948642;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdWdARSqH7VvgDN7UrZIngwwkVF/tqPP+awpBPVeunA=;
        b=m36mwyBELl+d6QLQ5eM5I67KT83EV80UGR0I9KsHXx7v+SobVtrGchPaRLIsdpwjQl
         tCdAbqwfqx8jjLQ/r9cMCGPMx0xAembjnQ8cmjCEg7bFQi+fhTyCbqyFOu9OifIwUrGa
         /NMSrn0t7WSculENKQ8NlXV02tS+oDUCe2eaIcTLq0dxgbPK0KJpC6pCzUxDiOP6deq+
         jbUO2dRbsu9QKHF+G1Vazq6aUEMFxAai12WI5ilhe31MbeO6OBC5/MiFeGxP3HTkCoPo
         0eb9l87jeXBdLlUxTlVwiytvzKJ/wMTZQVo6jxJieXYRlYvoTBXoMHn4Jmj+nhxAGcAA
         lCVA==
X-Forwarded-Encrypted: i=1; AJvYcCUo6XXryokDG0o/88TTVJHcQRdmWY5/8En52PDy9VTkdngJ7uXJ/eNJv5b2EVOLIv6vZAk7OOhfppMxxxyl8W/0@lists.infradead.org
X-Gm-Message-State: AOJu0YyOhtcp/+kQZwuGZvborNnBrWHVdeQpYWH9ZzCl24Nw/84QLI0k
	ZFF8z6RskNxLbH3cooaQWUsFZzcdKFDAirk1tocSmoQZnTIZb5M/fAqoWyGg
X-Google-Smtp-Source: AGHT+IG+XccuE4KvYTSXke9l8OsGYWA/KjiYABk6ydRkJ/0nKNr6Qq+wuMabAt9nkiEhGa67coCiQg==
X-Received: by 2002:a05:6a00:18a1:b0:71e:7bcc:a0de with SMTP id d2e1a72fcca58-7241335ac30mr7232729b3a.3.1731343841891;
        Mon, 11 Nov 2024 08:50:41 -0800 (PST)
Received: from rock-5b.. ([221.220.134.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72407a19dd8sm9401955b3a.157.2024.11.11.08.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 08:50:41 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Enable HDMI0 on ArmSoM boards
Date: Tue, 12 Nov 2024 00:50:02 +0800
Message-ID: <20241111165026.60805-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_085044_273732_EDC42552 
X-CRM114-Status: UNSURE (   6.73  )
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

Since HDMI QP controller driver of rk3588 is merged, we can enable HDMI0
on ArmSoM boards.


Jianfeng Liu (2):
  arm64: dts: rockchip: Enable HDMI0 on armsom-sige7
  arm64: dts: rockchip: Enable HDMI0 on armsom-w3

 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 47 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588-armsom-w3.dts    | 47 +++++++++++++++++++
 2 files changed, 94 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
