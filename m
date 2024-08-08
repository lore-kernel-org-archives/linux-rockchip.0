Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B5BC52D6F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 12:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tK6JdSmTnONWEKjk4ZWrfg89aWKtQyX178Fia1lKSRg=; b=CzJfedJVOAf1Yz
	DAgw5NjpfEa4MznyctrMADQ5zwLpGXFt1pTic8AIG4mMzJmUw730GN0tOPkNOO9kSz4wpRGYwCild
	V/t0G92YYk8W8LKpkKOAmYaeXEStAAroQPWXJRlZ4ZTr1c3P9b3SjClLcVUlwdGr123vqW6SL7vsk
	uP0GgsxdIJS5ryDGi49rQNcwVYI+za6d52sWGdjGlRPLNiwgwJ1zX8LccJLOsM2uQxxHAL2+Sv6ha
	GVLMwqEpeAB85R8PZAUBffAeG7SIcdgeZ0tl7yB3RhgtmlAn8dqRVal7c/r6d5HvsxF1862eIwJxe
	vNz+lAetJxSonfuzaBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2ND-00000008Eip-3Vzv;
	Thu, 08 Aug 2024 12:36:07 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2Md-00000008EZ5-0wJe;
	Thu, 08 Aug 2024 12:35:32 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2f16d2f2b68so12375571fa.3;
        Thu, 08 Aug 2024 05:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723120527; x=1723725327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nbjZvVaCZ0386E9l/US1czroDOauP6L7rtIUKqoC7PI=;
        b=E/efH0Q8RmEWvn5xrbVWLob525F9MNEJQ1kdjiCBIqKEhnX6XPyFSj/9l/taV9zYqv
         WbyYEMq0ND8CkX8L06cu5Gl1kj/YgLxKzg324knETJ/xPwBYyvWyH2oM4rVXEoIW8AjR
         M7x15LYY2Cw9NvfzccsIDcLb/l3wG39/pXHPszLq5mbP8ogk0Qc87xxaYQVfgdcgRVQb
         ORXeptnEAVjkUmXGyy8ed69y4fU1eJMvEE3PJZXfjy0EZhSOdz0HKAOQKbW2LDN6rMla
         tdmCB7/6NEuWXfZvvfEsp9Wx636e1GkAAyRCmOzRpP6qKYNaHP0OfB65aUY3aBwLEgPO
         cCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723120527; x=1723725327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nbjZvVaCZ0386E9l/US1czroDOauP6L7rtIUKqoC7PI=;
        b=SOHsnKOy5hVnwQeRnnw+AJ4I/qv9vOafdQxa63zgfGKXXnfcGd+z2Vj+ZtVEhP0M/7
         Tij7loV2RtRUsmG7YtRM8KG6seHS3OPdsLii/ZhiClXo7Nzaj0+4Nyy/U5368D9nxHP0
         MG2H8OLyhHKxOkLzxzzPecyL2bqto2PoIGuxuacI9qA3puA0/N1lH6jXFiCYUtr/Bq5M
         JKIjfTphJhGH1nhbgIfOCfBvO2GRbzstGG1CR2sP9WDEpX3K46MKRforBssRr0Sg8XyN
         9Xth7ln4huoa68a8L0mOI2jv+jWNHuUSdg5erUqtSAruOtDpNRHFxIkV1iFZGq4aO9fI
         nEZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHUq3jd22isS9CBgZxhdvmkkRBCEFS/2Ac8nD4eVyKZ9Vap43SmodLHSxRfPu1q/MP2/qfsxuzabnlo8VOIkq2TXAwN00STQ2HBNnMdNshtkoze42OsRCzfwbv7DCMHDRImtjftmMZtLqz6L7YJwTe9ltfTq3Iz9E=
X-Gm-Message-State: AOJu0Yxfl12bgabIoPHgd3bXkAuEPRDBSI+blj/HAo/DkbW82sDoYyaV
	SIHAMy4QMOcN29gbOZJgqOA9iaChZuhc682jQJSJMyBy2GZcyViv
X-Google-Smtp-Source: AGHT+IFWR771BHx21zDBqFhqt9dwZYU9slY+FeBuWcmPV7TkCmsXiwID11FP/YAZkPYNwIe+tvMpbA==
X-Received: by 2002:a2e:5152:0:b0:2f0:1f15:5a16 with SMTP id 38308e7fff4ca-2f19de2a52dmr12155621fa.13.1723120526732;
        Thu, 08 Aug 2024 05:35:26 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e17e835sm21072261fa.21.2024.08.08.05.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 05:35:26 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 0/2] dts: rockchip: add USB-C support to OK3588-C
Date: Thu,  8 Aug 2024 17:33:52 +0500
Message-ID: <20240808123354.260797-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_053531_283517_D538B2F9 
X-CRM114-Status: UNSURE (   7.65  )
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

This series adds support for USB-C ports (labeled as TypeC0 and TypeC1)
found on Forlinx OK3588-C board. The changes are split into two 
commits for better readability.

Dmitry Yashin (2):
  arm64: dts: rockchip: add USB-C port 0 to OK3588-C
  arm64: dts: rockchip: add USB-C port 1 to OK3588-C

 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 217 ++++++++++++++++++
 1 file changed, 217 insertions(+)


base-commit: e8054c08dada20f1bfb4d41a7f3902ae053d4499
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
