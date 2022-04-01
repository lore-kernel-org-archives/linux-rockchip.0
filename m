Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE80C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQyFR0tMXz1IoH2DVPgHC7Fr0i6qIQ0NQMB56Tl7xMs=; b=dNqF1QoZ3/oTIa
	nyQgxL5qegGgt/QiTmFkVKloFSyh3Hygv82QtGEs4hfT36hpXte0GGouWbjfO9bEVsHgNui1v+jt8
	AkETN1fqIyHtON2V3HuHqwqR9LBpFUnZkUmD3/mBY05nvJVKMRLKdwWa18qWjOjnk6sJK77bTJ940
	MfMRPQlegbHnhtIedir6kEZBeQl+DNuRCHT6pkXiuTkiNjDi2p6JRwn3uR45G3mriKYpEPnrBlGV5
	fN5hnNQxrAhupl1msXv7xwDlvJ+6ByENes9JvaSZfl4907v5q7zzuGANdPVx5GYg4q8I5+ZwNgy0T
	xVI9NxLD2X6EEf4ADvcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNn2-0077h2-3c; Fri, 01 Apr 2022 20:22:36 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNix-0074zg-RN
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:29 +0000
Received: by mail-wr1-x434.google.com with SMTP id m30so5827046wrb.1
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JSFleWzrdsVbfp76J0nZbw1NClVkvSpLHtH7RE9jkRs=;
 b=TjfHtdu71Zr1OsnHmJFojygbrytwG15ix1WIAML6l/Ksanl3O75cRxcUTNh35ZaLbt
 5fNy8B+wTUQe6R8WaM+AI8jMoDUanqa5/xrCuF2XEOBXl6StcncbQebtHfBVxUzeuWif
 H+3PzsQX6U7jqked9n9i4ypLM0Q47fdzUMkvjwFees4Ss+N7iJFdVtH1MSztF44r8fHX
 WjWjinZdGaVLjE0A9rEImoJQyDINEDbnDt4foQMSSv9/ah8gYWT4MxmFhKFUxqvEPJeB
 CeFCX+xAzDxbK2JstV4vUjprNh4SKgCk/ET0pB9AYLygB9xHKtqboIuHdWiVc+aHbR5I
 QNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JSFleWzrdsVbfp76J0nZbw1NClVkvSpLHtH7RE9jkRs=;
 b=c8Uy3LyI9zltUpMTh+sULYsFE0He8vi5V8sCALNVqhPRn4w/4T2Xx8DOnXvVhmmeJq
 zyezFx+TeRfXjC7GXhLz2VmTZ4JZGCSXoA79XPb5sC68hS5u77FNdl4gWj14tNS/C01p
 n3/cwBXwtch1dzyc70Yy8EPsUeNu3WeWNU/YitHh3bVxQ9WVZaiAeO2qFpgfYK9CcJvB
 yIevgGNfB36g5CUkQVJiVO4Y7kLTKz3uIS5BQwfLuZbyb1XsyIuUpwxm5ymU0rf/XLvp
 4FJs2S7W1LIS6IYu+YhD7GpR0wdxkWSdpo8/EdxZiz98aSNbuErvY5cXg46zVNSJR65c
 iOPA==
X-Gm-Message-State: AOAM530O+A01J1T2C3249uRtmtcsJN3I6KoyrxGnMgQFfFx143nLJJKQ
 0PXnMcnJZOcYl1BhrQaocEaW3A==
X-Google-Smtp-Source: ABdhPJyVkLT0AZgz4GOL4/42AJH9cfjelfykjHRuCbl0zKR/Jvr/gHI+20fFVbGUT1YYYu2ml8ZsMg==
X-Received: by 2002:a05:6000:1d2:b0:204:7fc:d6c1 with SMTP id
 t18-20020a05600001d200b0020407fcd6c1mr8731359wrx.367.1648844302622; 
 Fri, 01 Apr 2022 13:18:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 16/33] crypto: rockchip: add myself as maintainer
Date: Fri,  1 Apr 2022 20:17:47 +0000
Message-Id: <20220401201804.2867154-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131823_943376_DDF6D6FC 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 64e15af4fab1..70e2e46d0710 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16952,6 +16952,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	drivers/crypto/rockchip/
+
 ROCKCHIP I2S TDM DRIVER
 M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
 L:	linux-rockchip@lists.infradead.org
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
