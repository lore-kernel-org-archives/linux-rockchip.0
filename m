Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B50C2C982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYgD2Qk0dRoZ/oTa6ZkQi2S7W2ds9bxDu0QQjJJAoMg=; b=eyBQnVhtqa8w2+
	axog9s+2M49Q0GGcmJBdWPiOsH7Mv2sdmeJDQQJglEzsAOOsodMwmaEOewDjjVz0l20rW2cKrLkQK
	K3yAOG25ksUinxCyeNKdnS+w4rrUxBZYm0X+gOATyD3Ek2JNIbYAK2jphwY16pBJNcOW959CSLIO5
	7kmbJSuKDgJ5FFYXbk83v+/QLJkNDf18x5SDwVKDCEbVJ87fNsB35Wv6bFVjv2kWZ1WBiR4XDzuHP
	5VyLQHBzMKeWOJ/fBkd1Qfz53qP9t70w1Dg0p83FnWm8JmARJR3qumF/EHCr0Bf2QEaefDoZK1A6D
	LR9JcVDdimZH5vALDFsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XbP-000000011gD-0zYg;
	Mon, 21 Sep 2026 06:34:11 +0000
Received: from mail-pj2-x12.google.com ([2607:f8b0:4864:39::12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XbN-000000011fa-0pjY
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:34:10 +0000
Received: by mail-pj2-x12.google.com with SMTP id d9443c01a7336-2d747f05ffcso19523455ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 23:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789972447; x=1790577247; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eI/rghceFoKRDvJzmmhIiWgU5dI02A3SjLrHZWxVm/o=;
        b=j2PS2fcwwPo8uwJxkuttXOWFzkDaW0iXzmdAdtjIyspmIF1QvqV11DZ9wyg+JzC/dy
         qYf0sKKtJ45xTfMos24g7WcyPrC1TDt8L1sDM5z4eF1iCjKGA2ZK742fK6BAJWwGih6Z
         tu0azw+KPDwJ3vn2nTQR1IIzHP9YMTfwsK7GB3LLDDenp6Janp5ttdcAxCrWh6lE1Jz+
         TRP22KxUOlkXuERMB7/Uzx7STIvNVwf+p+TqrFNXji3UZ/D1ChTLsoYSLgwh3XbGw8tD
         ++9se96Hzx2u0fNi/CKr3D2AtpkbooYkSv8a4R9G4NIXv4A32n/daG2aJaGPWDGYNgFX
         kq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972447; x=1790577247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eI/rghceFoKRDvJzmmhIiWgU5dI02A3SjLrHZWxVm/o=;
        b=Yln7knTyAdLZQNc0DF8w3xOV5Zn/08nx771lPqlAObDRaKr3FpyF+u0zUIaeq8l/AF
         D26zUnDk6TJGNUPOGtfraBRgvhyrG+ush8gG3yzwaVP/NvD1cvmo0vjTFTkZfeQVrRcX
         bmDVo4lGSf6zeAZqycrwl+l0QRB2XaIkcShYo3UXwNmaCpoAR5vOp7fyd4VYlpGZfge2
         J5mNpRSpf+nTR5V3rp2heihAvVkZPvSbU9prcqCi4BM2F4jCn4yKZ6jS8QLfFU9bW4jY
         QFCKTcg5I+rFHi5vEeUPDPsPV1MTNVQQ9rPRMQ5DuKL+rpOqf/Fq4UlGNVKkcXIwtPtq
         9YGA==
X-Gm-Message-State: AFuF++k1ljwTeNo6XAiBzb9pw4bDPKNfx2YNfrRKxzMZFyMQ0yYULZKZ
	GNO2X7iJCleEQ7Ux7Oh5YV35lpdvMtz6Wa3J26kkPT0qbe+Kwt5Q7vnVMqR4HX+K+c4=
X-Gm-Gg: AYBFou1qFlwojIIqB23mq/iRwmbXgOxjlbnOJe1shmh1Caa6pw4k7HkLWnXv77nN2kT
	GnuqBPIzzUYezjDT6K6qFWzEj9FWtggYnd7GvjyEUbylgEqnVM5/HkxDqxHgGv5cyib316Ykm+Y
	iEyrQgldPhkp3XKD7FGWqYwwWhSMy0n508Ipd5h2gi307IjCK8gXqKm+sc9BVnA3SjDxRnRPfOZ
	i2C/oa+7neIAez9cYZD1SZej+Dh3r3nYpZKSEqhHuvsXaztzxA+Pf1pC2WtKQZ/AuuOz3Cd7OV+
	02p7GaejmkepN7t4aS0OMPWczV8uhF17hoXA6X8Motsg9pAu5wrFEFZcUTvWV3giNDBIsKW8oSi
	f0GGUouRVlc9PXowiPjKEtVYbJRPjIeHKMYFZ1Ncdzz9MIjwjC4JUeYUFF0oHWHLSax6QqgqAxI
	ZpuD1S/mj03FQew6WmgDb3A+2BlThalHg6EgHin4QdGyY08svmtFkRQ4ZpnkinMM0UbbLzbwc2m
	TkajrUmo48=
X-Received: by 2002:a17:902:e751:b0:2c8:2808:3ec9 with SMTP id d9443c01a7336-2ddb1ae69b7mr148847475ad.12.1789972447082;
        Sun, 20 Sep 2026 23:34:07 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc17888a8sm28824695ad.26.2026.09.20.23.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:34:06 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: drop unused i2s0 from rk3399-firefly
Date: Mon, 21 Sep 2026 14:34:00 +0800
Message-ID: <20260921063400.2020-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260903082713.192-1-yaozhonguwl@gmail.com>
References: <20260903082713.192-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233409_255861_B3C0729D 
X-CRM114-Status: GOOD (  10.43  )
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

Please drop this series.

The commit message claims that nothing on this board uses i2s0. That is
true for the DAI, but I missed that its pin groups also list GPIO4_A0:

  i2s0-8ch-bus           ... <4 RK_PA0 1 &pcfg_pull_none>
  i2s0-8ch-bus-bclk-off  ... <4 RK_PA0 1 &pcfg_pull_none>

That pin carries SCLK_I2S_8CH_OUT, the MCLK the RT5640 runs on:

  rt5640: rt5640@1c {
          clocks = <&cru SCLK_I2S_8CH_OUT>;
          clock-names = "mclk";
  };

Dropping the whole &i2s0 override therefore leaves the codec clock pin
without its mux configuration and analog audio stops working. I have
reproduced that on the board. Sorry for not catching it before sending.

The correct change must split the MCLK pin into its own group, attach
that group to i2s1, and disable the otherwise unused i2s0 controller in
the same patch.

Patch 2/2 depends on this one - with i2s0 still enabled there is no
pl330 channel left for i2s2 - so it cannot stand on its own either. It
is resent unchanged as part of the v2 series rather than separately.

Could you please mark both patches as superseded in patchwork.

Sorry for the noise.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
