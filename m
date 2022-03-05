Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A69CFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 21:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YnqUSfBuV7FQvjkouZlsCX+93XfKNO3FCuIBlcLI+f4=; b=sLy238qMNI6PvO
	zVpzhIvrJ4s3su9Ch/yWb6XBuZbJ4ul7CE35x142Obf9As+dFkhbCqrbgZI5zvtZIflUbBhX/F/mr
	/ZzdPpS3BaW2vj3kKnVgav2bPh125/SV1c3AhFclGkqoXajckl6fhEyveW1mIkXU71GlUC3E2kyJj
	PQFZdNbH6Lw1y0KxPRgLYrckUSHP/TXs5QAykY3S0PlFx6gg4ldZxUkfhxeNmjHnFMvDhzZ1xHxl9
	8nZXeCEooMh2EHPqNozKN6sOu5LyJoxROssPxx9ToPM1s1o2NQ8IyvIz7yWKxdHN81dnVAeleII0y
	sPGsjW08lwj16kROcEzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQcQG-00Dt9S-Ts; Sat, 05 Mar 2022 21:58:44 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQcQE-00Dt82-Is; Sat, 05 Mar 2022 21:58:43 +0000
Received: by mail-qt1-x82f.google.com with SMTP id o22so690897qta.8;
 Sat, 05 Mar 2022 13:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIx9K9RJDUrDmNZanDKXxxk7CV46iR0tswozjr8hy+s=;
 b=bAc3BRu8jKiSyzaZi1EjxUBXXI7kqHegUWBiPskQcQMHtcltamHZULn+HD006kujJ8
 G+4rLgv0tTepehZ2KHvQNyzOxGQLiOFWlL7fCcp9EWg01EAiqf/2Bv/qCU+WWVQ/ILd1
 cf7eXFDQWBbjEXYXfdCryAAjuuNzV2a1gFscFdUrB0EGFtjONTUF3EDrbKUIuB1zn58s
 JH2iZEDXBcIe0R3f14rMpgMHDcqjic7F29pw4oW2heIGTOJa4DC8C2k5vuNm3ADO/xqK
 FRiQe5oTN8wWkdajt+fB1HdnUKULSSIJz1r1yrkBAjTmja8V2wuAPl/GeHIMGym284+a
 UiIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIx9K9RJDUrDmNZanDKXxxk7CV46iR0tswozjr8hy+s=;
 b=NoIQp40EHVN1RlTMCtREB3vh8oZ5LM13hGUJvOzjbnONC4q3dJ6L7k69oxSpyv/KzF
 B9tVyb5KrWiaPKQyEM3yCYMQE2B9ghXh7ufslaeUnZZzt45fTemv0Gaao4cuDiH2QRx2
 8egG74byXFG6LfAwsJDDCp7z0n8+8L85BW9onckhdKHn3VkDSnZrT+XPFqWNHgLrXv8h
 NOf9SIgx6y4Jo2uK64Jh4f3im9++hk90SuzTGOYm7r9JP5ghBq8zXEZo/SW0kizWHRas
 Y7X4cvoTEpqeHwJqoU6jqhr5W2VHXZJaRpDxmCg3VnASfznsIbavybFYxVgzpcdyKUv0
 eY9w==
X-Gm-Message-State: AOAM532GB9wd61SzID0LJLXXI0c9EA7fE4JyQH1lJL7z6X7aqnzQRyHN
 Qa2qecZIXFVVIzkNTHWpU5zSA5n688rmsQ==
X-Google-Smtp-Source: ABdhPJzfTcXCrWx9v/ZGHY5w8QSH2c4kePkdPYZEMCN9VCXy6oIwNP/X43/ccSKgjTz3tul+cmEZQw==
X-Received: by 2002:ac8:5bc2:0:b0:2de:adca:6624 with SMTP id
 b2-20020ac85bc2000000b002deadca6624mr4178178qtb.120.1646517520873; 
 Sat, 05 Mar 2022 13:58:40 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h188-20020a376cc5000000b00648d7e2a36bsm4230067qkc.117.2022.03.05.13.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Mar 2022 13:58:40 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: robin.murphy@arm.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] fix dw-mmc-rockchip rk356x clock rates
Date: Sat,  5 Mar 2022 16:58:33 -0500
Message-Id: <20220305215835.2210388-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_135842_659567_F5D984F5 
X-CRM114-Status: GOOD (  18.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

cc: Jaehoon Chung <jh80.chung@samsung.com>
cc: Ulf Hansson <ulf.hansson@linaro.org>
cc: Heiko Stuebner <heiko@sntech.de>
cc: linux-mmc@vger.kernel.org
cc: linux-arm-kernel@lists.infradead.org
cc: linux-rockchip@lists.infradead.org
cc: linux-kernel@vger.kernel.org

While lighting off support for the SoQuartz module, it was discoved the
dw-mmc-rockchip driver has tremendous log spam when the cd-broken flag
is enabled and no card is inserted.
The SoQuart requires the cd-broken flag as the CM4 module pinout it
follows has no card-detect pin.
These errors occur during card initialization on all rk356x chips, but
are amplified by cd-broken as the function is called multiple times each
poll cycle.

It was discovered the lowest possible clock rate the rk356x cru can
provide for the ciu clock in the default configuration is 750khz. There 
is an internal clock divider that makes the final minimum clock 375khz.
We could hardcode this, but it is possible it could change if the
default clock configuration changes.

To fix this, we must make two changes:
First, the dw-mmc core needs to be updated to allow a host driver to
save its requested minimum frequency. This is necessary as the mmc_host
struct isn't available when the host drivers initialization code is
called. The dw-mmc core can then apply the f_min later when the struct
is available.
Second, the dw-mmc-rockchip driver is extended to test the frequencies
mmc core will use during card initialization. It finds the lowest
supported frequency from the cru and saves it for later use by dw-mmc
core.


Changelog:
v3:
- add support in dw_mmc core for saving the minimum frequency (fixes
  setting f_min)
- add test for the lowest supported frequency to avoid clamping configs
  that don't have an error

v2:
- change from muting the error to attempting to fix the underlying issue
  by setting f_min in driver initialization

Peter Geis (2):
  mmc: host: dw_mmc: support setting f_min from host drivers
  mmc: host: dw-mmc-rockchip: fix handling invalid clock rates

 drivers/mmc/host/dw_mmc-rockchip.c | 27 +++++++++++++++++++++++----
 drivers/mmc/host/dw_mmc.c          |  7 ++++++-
 drivers/mmc/host/dw_mmc.h          |  2 ++
 3 files changed, 31 insertions(+), 5 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
