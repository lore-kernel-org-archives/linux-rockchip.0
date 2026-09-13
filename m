Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E52C88E56
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 00:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1P7mPP0n3nKHTD/01QeS8HboVXHPozKXZSI1snmaZM=; b=S9ljbyjg4xOGQ2
	9NYBuX15MO3RYKdnAnm1FG2seR3kXHW4GmDroeljuB2Ky1tTisdWUaAypBww4jRlI0vlrjb/oqDWL
	AyKiEcg6V6VAuDkXxZwtuWx6jsk5RiEuQcisrBtLlcQDe/yZzSNEILPN3xPuvlVQlTYy5rcApANcX
	FWe4zNxxf4qgtHbw/5DHE+xIij1Zm83KtJoB3P82FpfAInLGrqQw3EFt6TdOi1yQEdFK9gbmzJ5wL
	0SyS4X9l69Nm4q8pKsvrRho2URSStwIyVo2lCgNmPjDaFWawikzO7mrAz5nddAnBi8/QPkZi6bCRl
	Y/1/XtMl/pwRyR+OmnqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Xr9-00000001HqB-3Qce;
	Sun, 13 Sep 2026 00:14:03 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Xr6-00000001Hps-42JM
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 00:14:02 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-484399babcaso121568f8f.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2026 17:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789258438; x=1789863238; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KLBe/OOwpVUGn9wvmYKnhyUUthdVTu/kHIljamopULo=;
        b=FaXgigR880uVmzpccqxtXjiMq0uApdocCTmANriLf5kaaSXvgaW619gjEaufgU15YC
         MNBrgy4Oeds47/CVwdaIq2WW63Fkq6Nro6e1TLiJwF7YKl0HXAJ9gKCe3ug6HOwj04EX
         H5+by3SSx6gBrNG1cGdX2pfAoR2zycN0me+HAiQyLhQjci4TrlkB2aMrQlTtEfw2OLlp
         RE6LyR5IbpYnfUy/ukPXKcdqair5HsMOS0ZoJXF3P4DixmQ8P5zs7ATiDDV+jXKZYV4L
         vGzaEKGcLd+0VjI6UeSF/KM95MbyOKtr8TBvmA4yIaIc5U1FvHHVYOJ7V1Uxonuuxk7E
         XZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789258438; x=1789863238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KLBe/OOwpVUGn9wvmYKnhyUUthdVTu/kHIljamopULo=;
        b=BwXw1oxISlNIYIaGlCT4FXNLz4e50xvpP3SNaY4BA0Zn0u9RxaEIasmmpiRDnmXpFF
         Vk4NPF7eG85rQN1wlW1RHPPkPi06QMwG+g1j32SK6e7VOzI7TDe52X6NEPXHQWKBnLnJ
         QsguRhTc92sC3eu1rzNemIL1fQXuXO4pABtmfV9EjQSgpa1X1Vu1/09mX9brv851IviX
         dqRtcemsyLVotDRfDowQgNUjXbTc5HpIZLouD3pnml8lcQdgnIQZU/L4MRSMMs1Eowbe
         /u6T/3gOohnXy4qMsQhpWJcOvuvga/SYS1xK6N4Fo2Va1kWPVuefxA+G5Cfm7US7tW80
         zomw==
X-Forwarded-Encrypted: i=1; AKwUvBxkCFLGmSzZ19W4cSSH9paXVhfMAzE4GClORwnFAUk/FrPzWbBohpLvhoj/gcmDxRHxH0tlAynoIgbZ4jR0Lg==@lists.infradead.org
X-Gm-Message-State: AFuF++k+uItRvXlu/I/eVmTU1dxGzAwnfdXOX8B1n/iA6iBmKvSI6jr5
	YpyXEfMsLYcxCii6PcEAo7D3E0FkiXpNpaIZpIG3wQzisFl9UIF6nx8EKwbe8A==
X-Gm-Gg: AYBFou2d+R4sTo4VB7HoRwEX6FxPsGy1zYYqUu4k24UYSJY4JYUhxz1o5oPGF+jAOCH
	VO+pSvGpzNzNlmcvIo1OZWEAeXtqvS8mS6P5mwHtX38ZOvyx7hppIWb76VNAPs2y6+XQq+jp1oG
	S81z8cO+PGfkZB0QLQi3Tj1ktCDRVW5t42cdNRMPg85t2BLTcPdGo7yA3O3Sx2YfAgs0X59W8uf
	vM7lUCzJ4Ss+fgl/H4z2h2PKlwpMLY94qXas0l3WFynW2kuDXOGrJdDVsdrEVy6yTAWsL+VRSBZ
	2koCz4PiTwRRgcDI4XPgwK91+tQlOzQN5jTTtfa6zppFOjXPoYH4Sn/Ndcq0hmvqpQVXekwyEit
	b393bdlN6xsiS6kKi6xCjQJbPFrg1pI4BJRicfPDdYorcfZvu18g29/NOMNnB0zR0rqrlrUO7cp
	/YvRaQa3/gAQZH+flxE4uj5SwKq6O53zLYmqLO49gJPngn9rGZ/NBtAjIsSc/LcfJ3ku3oQTf0P
	N9HFOkZGyYyZXV4YUmhow9NsQxUERxNWvP+deVFAUzqNPG2KqNBAvEFhnttNHGz8SGd2PB2WXPX
	gWQ=
X-Received: by 2002:a5d:5d0b:0:b0:486:f768:395b with SMTP id ffacd0b85a97d-486f768400emr4396159f8f.0.1789258438177;
        Sat, 12 Sep 2026 17:13:58 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8209007423DB663D3B2FEC.dsl.pool.telekom.hu. [2001:4c4e:1b82:900:7423:db66:3d3b:2fec])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-486eb34f1f7sm15970102f8f.24.2026.09.12.17.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2026 17:13:57 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v12 03/14] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Sun, 13 Sep 2026 02:13:27 +0200
Message-ID: <20260913001327.47121-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260912224844.1614558-1-gahing@gahingwoo.com>
References: <20260912065053.1519165-1-gahing@gahingwoo.com> <20260912065053.1519165-4-gahing@gahingwoo.com> <20260912113717.6819-1-royalnet026@gmail.com> <20260912224844.1614558-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_171401_031702_CE6B9C4A 
X-CRM114-Status: UNSURE (   5.42  )
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

Hi Jiaxing,

Thanks. Please write the date, so the text reads:

  45 induced resets on 19 August, 102 on 25 August and 74 on
  12 September, every reset recovered, no MMU faults, no lockdep
  report from rocket or the scheduler in the runs where lockdep was
  still armed, and of the 420 inferences scored, 384 matched the CPU
  reference within 1 on all 48 output channels while 36 returned the
  all-0x80 buffer of a job the reset had cancelled. The protocol
  bounds; it does not prove.

Keep the caveat, as the last sentence above, so that "it" has its
referent once the paragraph around it is gone.

The tags as you listed them. Nothing else from me for v13.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
