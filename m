Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18601EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 17:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=golSOe/g9UM7tthf//I4SrnAKPMRj2A8tO0VkN8XZhc=; b=MAnUpBPHuYl2aG
	6x8u5tl+Rtbc3ydKaKTPsELN+30DEpQV+zYvCmn5/ZKeo7USQ60OKlFRZCIyr8QFFHWz/c8P77CpI
	CPgSsl5Dhj72vjDFBG2s8vDWwzpd6f1rkUeyZvttb8uNIxWxoy9Q0hujWX3RzM0djiNGYs6e9KihH
	zsGqw/FE9fOWMHF54eSQyyUX32q9BjipDGzv2ZETQ4pLi8KIwlLFmEJGgKBRfGQHC2akg6xD54q7e
	Ny9pfbSiYdGXfxoycfCQDAOGo5trAFogrdrPOPwOcCAG6RrXmh/OpsFuKRWg+kknONVk9NDOpzpVE
	OzT61tph6NI2+y710wqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qpn-00Fb2D-1e;
	Thu, 15 Jun 2023 17:32:35 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qpk-00Fazf-01;
	Thu, 15 Jun 2023 17:32:33 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f61b45ee0dso11050052e87.0;
        Thu, 15 Jun 2023 10:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686850349; x=1689442349;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cJxuaJ5691h/k4UcTAuN0XDw63vuAh/dneyBNjCjVmY=;
        b=mV/e0OUTEj46icDsVr+JRbtP4EPO9HzVPEwP6B2e4JDKoPWX3NXfgikVpy+7wg2NbD
         8V28anN5XJveBeXd0RgY9vPuEF6TN0Cqam02EPVxvzB5pxFuLp3AbYeS76tZawInOIj9
         KfctomLfGfGYOd2X/XsNVfPd+G8HUmPVxTxg0ImRuLMoRfGGJQ7j6WjP38I5BylB+A+V
         LosWW2IqnTnrq3ogF/+DAYkkRxAm8QGNNJo1EdpLM6Cdg5oqwkbmtPwEt3Iy90YmWpVA
         Zpr+3HkzSgtohniS0LFHzVhyvY91mzUP3v9ZMhqVHIC4cJnqsY7R3vwvI0FEjG6movI5
         8PVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686850349; x=1689442349;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cJxuaJ5691h/k4UcTAuN0XDw63vuAh/dneyBNjCjVmY=;
        b=HHLUkWTGa0J1UvdsWWiuKl4j0lulK+KItn+cCZpzWEANvV0hM7/2D3O2c2XectlMR8
         DYIeBdaLexFSAvPwPHXpTrq9cjma7rXGUA/JtD6XH1iOoD6xuXR8aimO1pgJfwWtQRn8
         5fsvUR7gF4lthYsr6DL9i085OOdupav6BYVJiOQSbGN9uSnCDFbaBcn8DEBiJXGrbJTz
         Qqdt2cx4pc7S+H/lndF3aebb28iLVtZtvDuyCl939kivQ37sYX0mM36ZTiqa6WgigoWX
         wT7PgVsCxejx/E9a9KkaIeqwb8yP6OPikSMaZ5hrq3I17ExNk9Rfx2O4kkwd/iewhVMo
         yy3w==
X-Gm-Message-State: AC+VfDxtRcj8sUmMS+bm+AO9ogt8qSken7weRkxMtdaZZokbcUGx91Mp
	1mmn+R4LdSvTdjrJ9dUOafg93zIouOs=
X-Google-Smtp-Source: ACHHUZ6FZpgcNvW6Qi5ZSZdhqz1y/N8G1DHAib7CyXk9nmboV+EfYS5w6LkFk00Y5fDNCee33DChSA==
X-Received: by 2002:a19:ca5a:0:b0:4f7:b640:fa43 with SMTP id h26-20020a19ca5a000000b004f7b640fa43mr2399794lfj.38.1686850348704;
        Thu, 15 Jun 2023 10:32:28 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id s24-20020a1709060c1800b00969f25b96basm9570398ejf.204.2023.06.15.10.32.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 10:32:27 -0700 (PDT)
Message-ID: <0047fc52-bc45-a768-8bdd-c0f12cddc17e@gmail.com>
Date: Thu, 15 Jun 2023 19:32:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 0/3] Fixes for Rockchip NAND controller driver
To: miquel.raynal@bootlin.com
Cc: richard@nod.at, vigneshr@ti.com, heiko@sntech.de,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 yifeng.zhao@rock-chips.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_103232_049182_4830A77D 
X-CRM114-Status: UNSURE (   8.50  )
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

This serie contains various fixes for the Rockchip NAND controller
driver that showed up while testing boot block writing.

Fixed are:
  Always copy hwecc PA data to/from oob_poi buffer in order to be able
  to read/write the various boot block layouts.
  Add option to safely probe the driver on a NAND with unknown data layout.
  Fix oobfree layout.

Changed V3:
  Change patch order, layout fixes first
  Change prefixes
  Reword
  State that patches break all existing jffs2 users

Changed V2:
  Add tag
  Add manufacturer ops
  Reword

Johan Jonker (3):
  mtd: rawnand: rockchip-nand-controller: fix oobfree offset and
    description
  mtd: rawnand: rockchip-nand-controller: copy hwecc PA data to oob_poi
    buffer
  mtd: rawnand: rockchip-nand-controller: add skipbbt option

 .../mtd/nand/raw/rockchip-nand-controller.c   | 52 ++++++++++++-------
 1 file changed, 32 insertions(+), 20 deletions(-)

--
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
