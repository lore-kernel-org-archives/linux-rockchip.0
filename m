Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 137C2EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 12:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nj9Y4zRrWvFARtfNug8AkEud5yeNWFefjCD/vf6IpOw=; b=Zc95jejy/Nyhw+
	rtioWWA3XqEHFsQqg6Cb//S7rOASY5DbJOP+5+fepGWBj47rIyAbaqAB0uilPTn184cUSvP6eb1zv
	UPrPYfhOBzo1iEB2YipGP5xn1DxBNkhO7IRoaoxTc1jSImlgW6WGgPfkvLVM1tOD1aULkia5IW851
	2cjCOiEyYzdX8BDWnra5FmWvcXAkcHbZCtG7f+8eLS6ufi5t8ZZY2xRDJpgX3dn2TQnoWxkoqahSQ
	egVglIApA3321vgp+G4SiXpqEPRd9wqlxG8M3npmINaa8zSsiqk9ogYtrQZdZkj/5pxJxzFTPNkCw
	I7SObhWmfaeYgSOH9mpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqCR-00BcuA-13;
	Mon, 10 Jul 2023 12:41:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqCN-00Bcrs-0o;
	Mon, 10 Jul 2023 12:41:04 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fbc5d5746cso51446595e9.2;
        Mon, 10 Jul 2023 05:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688992857; x=1691584857;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6540cLNfoRbAtg4vA9lk8oUTbSbe1006pfKkyagjqpE=;
        b=PdLzhmWm3DEjaCNWQp9QGgBju70BNyV+GIggwzQrxuqz3jVwrz2fzwpRyrZ8IOLbuJ
         drmBKJzupO8GypCza2cZw6u1ttsRrJaj/I6KOtkuEY7l+MTEVQJZ4Vd2qUIMZkdEnQ+k
         BHhJNeuFLYsodJG/GcV/Pch9IqcTJO/sUbomhj6Yt1rq53F0u0FCYb72Kh2iFEKUf7qo
         MFFdrFsD5H0FIdgiCgphQ+XjH6KJqRaA4HJIxt5IbEKP0q+Lz3s6PtfKiuwbdr1CZQVC
         wISikuLCV0s5sadFdb/9fuKQsTFgPsgxiuu8MedOHN9KlQMQgLVWb84QRCoEH6YK53Rl
         Sw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688992857; x=1691584857;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6540cLNfoRbAtg4vA9lk8oUTbSbe1006pfKkyagjqpE=;
        b=gmSL3mn78C9s4MEUvl3Xbo1OENzB/g27HCCoIcjSRz2eKE/sF36Pwr/yf31todjZyV
         sWpIg9n8+Xt0yZXz+LECQbB5iEvwGV5WsycRnaG00Grkgzp9Gpvaa/HWTGQtAxU4FniV
         kHTcxyeuWCqgpD+9543drf/k6p5BfBKZea06BGoAUreY5qcgkEN+RDiZawWNRZ9ThOf7
         q0wLy7pXE8CBX13JIKv0VONH03SCgYLOs1uYb6+ZmjtAZAQhwt6bmk60hBBZYPXO+jr8
         /wPVpx3dJ1kpuCHWYds9zesFGUmni+BC6JezaTQeveUz3/d6EEIN32LjQEUfKN2CfKdU
         1PgQ==
X-Gm-Message-State: ABy/qLYCs1z9nZdfgjBQmwd2SARn+RQsQO5M1PqbRXZ6QfBYOaKUn9JJ
	wYvPoWwjSlH8QUmoZyZ/L0Aw86YDvsI=
X-Google-Smtp-Source: APBJJlHD0tWeYBfIVQdQZvg5aphVZDdKZ8HLLaBchGgbsAm4KzHy1FJGAQOwgJvAzr6CdXE1CShgGg==
X-Received: by 2002:a7b:cc9a:0:b0:3fb:40ff:1cba with SMTP id p26-20020a7bcc9a000000b003fb40ff1cbamr13506149wma.6.1688992857263;
        Mon, 10 Jul 2023 05:40:57 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id y23-20020a1c4b17000000b003fbd0c50ba2sm10197336wma.32.2023.07.10.05.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 05:40:56 -0700 (PDT)
Message-ID: <08f694df-4c1d-f059-43fd-f1aee678062c@gmail.com>
Date: Mon, 10 Jul 2023 14:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 0/3] Fixes for Rockchip NAND controller driver
To: miquel.raynal@bootlin.com
Cc: richard@nod.at, vigneshr@ti.com, heiko@sntech.de,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 yifeng.zhao@rock-chips.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_054103_287284_BE437E84 
X-CRM114-Status: UNSURE (   8.17  )
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

Changed V4:
  Reduce subject size
  Add 'Fixes:' tag
  Reword

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
  mtd: rawnand: rockchip: fix oobfree offset and description
  mtd: rawnand: rockchip: copy hwecc PA data to oob_poi buffer
  mtd: rawnand: rockchip: add skipbbt option

 .../mtd/nand/raw/rockchip-nand-controller.c   | 52 ++++++++++++-------
 1 file changed, 32 insertions(+), 20 deletions(-)

--
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
