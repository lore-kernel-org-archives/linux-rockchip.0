Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E4FC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 13:32:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE4C660249
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 13:32:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE4C660249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OvJ4EsW4dyV4ByWqHMD/Ro401x2LnNLmxzKDJoyqFA=; b=hDcH7Fr4yLLPCL
	J3lfPgzjRtGXSb33ZkSsBqs9OJh8CMhZ5RSCvcg61C346dAjlxSzP581CRpoTTTvT6JQw+pkc7Opa
	VILsjssasgSOMBTA8ZnJRkmRtkuniQAALaBDSO7FUkTmWi4lFDqYt7o0BphlVPW3ZNwJDPaPYkaL5
	/TiUzmiDqOenVcA/vZ82glN5I0e5UjQ0tkqF6nURPGF1AW2DLeSAYl3vQKLb+t2yl5scnVYim7kmW
	Ui5TzU2jNnuFtEphKei6dLA8ZDY3su8tISddKrY3nK+52UxSr8ArZgC3KyUN9B5yUy8MSVHIz+yKP
	5Xub9fM9gAMAUcez/9Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL3sF-002KWM-LP; Tue, 31 Aug 2021 13:32:23 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL3sC-002KUX-Nq; Tue, 31 Aug 2021 13:32:22 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j4so38550277lfg.9;
 Tue, 31 Aug 2021 06:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:date:in-reply-to
 :message-id:mime-version;
 bh=GeCDFSLFkHR5bfvtTUMyOsp472Ws5rrIWXodPm7S9WQ=;
 b=BHF7fxNGQJoaX8Br8UAy5Or2/hA8l9vQh6vYYRIALA/fGgAgBp3MlxMZjOOpfJC8YT
 hQrrpiI7T0NlM176HHUbzI7Dkh9HBnuEDVaGUOcTUO+OePoyVYn4YIQ4ko9Y7z79pwbr
 nItPhVh5IzD1unVWZrcXcvnG43RfveHWe4McFdXim7KBKLuwqxM6rnOE7dX60iJDVc1Z
 z9f5zZL85iPCHZ40WAfvcfae+cOy4HUKHvWpGcPkEMVFgvpX2NejIn+/QfXfEiK/L2UC
 RB4sOGwxoE78YneyeAMG1pOS3u3A75v1mDuMhIoPP0x2/Uy/1G+w/EHIVy4G0IS5BAsI
 16eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
 :in-reply-to:message-id:mime-version;
 bh=GeCDFSLFkHR5bfvtTUMyOsp472Ws5rrIWXodPm7S9WQ=;
 b=aC0RbkmjnH1srVcuDZj3rNNTHYeK13bS3SFL6qqudIPklCvH+JnH4YNHTR6cnO8wov
 SipCVL8DAQKF15rNQPRfF4o51qCwc3yoy07R8SqIHSBhJvvNXWfhhvQuMDF8nTlUmcdn
 tVpgK4abQm5uMLexS8GNA8MpvhmfnnA+J/pz9YEnOW08H6xKesP/KU3UD5F6K7o08bbt
 e8ViCxVKbsdLNJ95kRLl8qFeRzsgaKOn6QSmQmxnI1ohpo/OOMsWwMNnlkoiGyKI4TsL
 ++96vG/JpDWpv1tHbuKmqifLAM0mrJ5JV9GsmBDwRWMtvjAXoTvSZCjtRZzONwNJ3WzJ
 JaRw==
X-Gm-Message-State: AOAM533kvnLiRNnjvk849Kd3iaF2wheivfYCJkJuA7ZR85zzhXdr8h+g
 C08igAijF3anbkDjywzGzZk=
X-Google-Smtp-Source: ABdhPJy0zOkaHmnYGTwuWrKtaFfasl3BH9eyKB3YBjINYLVJ0qrXbQynCoPpUp5pVch7HLPqoW87UA==
X-Received: by 2002:a05:6512:4005:: with SMTP id
 br5mr15045454lfb.560.1630416738553; 
 Tue, 31 Aug 2021 06:32:18 -0700 (PDT)
Received: from razdolb (37-145-211-218.broadband.corbina.ru. [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id
 z25sm1726036lfj.132.2021.08.31.06.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 06:32:18 -0700 (PDT)
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
User-agent: mu4e 1.6.5; emacs 27.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/5] phy: phy-rockchip-dphy-rx0: add support for
 tx1rx1 rx mode
Date: Tue, 31 Aug 2021 15:58:30 +0300
In-reply-to: <20210830180758.251390-1-mike.rudenko@gmail.com>
Message-ID: <87sfyp4u5b.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_063220_848469_88B0ACC3 
X-CRM114-Status: UNSURE (   5.21  )
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

Hi all,

thank you for reviewing this and sorry for me failing my prior research
and overlooking existing Heiko's solution [1] [2].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=71f68fe7f12182ed968cfbbd1ef018721e4dee30
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=68e0277204c733dff19073686e2ac48239b06fbc

--
Regards,
Mikhail

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
