Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3B9C54EAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 08:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cp0aOJ+nxly6C/ixS1eBCKLwujtboQHzGu8fZ2EC98o=; b=a9o3aGo8XNCkYv
	PgTJzA4JjdNi/WhqQ5JbuuSbxSd49zZ7MajBnQt7iChpr6AnfseH/IYeKTmzK10lZp37vmMjkgtFr
	+1UUEEYcbhRhQbPr3VppWvH40AlATj9Y13a/kugP9odG9oGn1MinD1NQ+IroZqBbu72+JFeADRSGP
	76KQNu+W8YXmRdXu9EFOF8w6S5XKYH7HrUXb/+2blR8o8XrqBhmQD0diu83r/xs7JfDHX06qx6xHI
	f0nFUBDRPR3Q9mhlqjNd2cvWnvkmU2Pp7FbVWJM+R6toygd3vDhDGlNStWtGvxBkI6/WO2upy1OHS
	Fbv1xxwkeDY7BTJvNl/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKLM-00DXQr-5W; Fri, 27 Jan 2023 08:44:20 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKLJ-00DXPi-Lm
	for linux-rockchip@lists.infradead.org; Fri, 27 Jan 2023 08:44:18 +0000
Received: by mail-yb1-xb32.google.com with SMTP id c124so5099004ybb.13
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Jan 2023 00:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V/H55PEXyjXZT4GZWOk+Oen726TtAu6SBCILQ5VC314=;
        b=OygUJsxPXXb1A7zKawby3jULVZLlc1E/B+T3dd6sTjk9qnIZGXqRQ5QiaAUgC8Rxec
         vX650NyVuSjnEnLv4UwmoWZ0gGH9OKcQSjohgypVW/+I/rp/bzThU8sNE5J2HSnq7Ynn
         kqjIzWJoHCLGblSRkb95JV9b3lsEPj7QIhb7BPHf1aAApRPaWaYwc8ETkOOcjJmxpTM+
         THDew74cA7oGcdBBXmW5maoHNWiVC+Pz7zJHbzYHtu+QALJIw1JXAMS61Qh+qlXa+EnD
         p+m0PWed6sTbB0+Vsu80mmlPEXvmsfAtwqhZ5pfL1YxidX2QUW75rcvIwUZGqKrHiHV+
         z4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/H55PEXyjXZT4GZWOk+Oen726TtAu6SBCILQ5VC314=;
        b=uE9rDhtBk3phTPDu1eRfiDk+3Gb7bOL0oRGyXxnFKQ6/JyBKKB8bYN45C8MJt8XTv+
         ksaDWdA6U+0bXsV9phk39LTMPcHuAQ2LJ1TxdR+PvsDRWJBTgYp/CMKmQQlUT6Fd3OcT
         MOrfIs40//zwBTUffGCgopBLWjnjiVTSqd6uJgQHP9s4oNmdNIYB6a2A+ZO3i1EPfIeh
         xosU15dOlejNO8vKTvipS5UhT+YuPgHCM8tUqbqRwHAf1EMK/+cFJ0uT9eLlbX8yoYNa
         0RYq4Ehoap/P1TUc9f9+SP6Qf4cylMvLPt6PoovGoi9IBdD5rsviuEBpDvhfcGdyWR79
         ZU5w==
X-Gm-Message-State: AO0yUKVis0/vjJurhpJn6Y73XP8XNc7Va3ppeVqoRVwJZ6xhhIRb24bl
	tG6PLdkd61nrz3alp+Fxe5Dico5L1rkVbw/sXvXtRA==
X-Google-Smtp-Source: AK7set8wMrWFYAXUWahy33AbglefgDSZCeEIUwyW+7cMkzPKxVYUPC/q7srh0/Zo1YXxBa66QwQHiC2sd7EnEFYL2+c=
X-Received: by 2002:a25:d1d1:0:b0:80b:4d84:b25 with SMTP id
 i200-20020a25d1d1000000b0080b4d840b25mr1265372ybg.584.1674809054262; Fri, 27
 Jan 2023 00:44:14 -0800 (PST)
MIME-Version: 1.0
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Jan 2023 09:44:03 +0100
Message-ID: <CACRpkdZs2ZCt=K8Q89XhpA_hKOZHUk6+KdJtsOKr3rBM2Rm1Ww@mail.gmail.com>
Subject: Re: [PATCH V12 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, 
	airlied@gmail.com, sam@ravnborg.org, thierry.reding@gmail.com, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_004417_743050_9B8304D8 
X-CRM114-Status: UNSURE (   7.18  )
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

Hi Chris,

patches look good to me, Maxime is happy, so:

On Mon, Jan 23, 2023 at 4:46 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> Chris Morgan (4):
>   drm: of: Add drm_of_get_dsi_bus helper function
>   dt-bindings: display: panel: Add Samsung AMS495QA01
>   drm/panel: Add Magnachip D53E6EA8966 Panel Driver

These three patches applied to drm-misc-next

>   arm64: dts: rockchip: add display to RG503

Please funnel this into the Rockchip tree!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
