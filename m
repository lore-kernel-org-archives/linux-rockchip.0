Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D07C55173
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F17xpSEvhhoeaWcuNEY+hiSNqJyHqMQwdAKkKW5aqcU=; b=hYFMFAJR2SguLw
	fXBcKajaoyiOr2dHBf1gyGTb+6bbTIJ9oTdY9J6pndPRRc2T8RLjTIvN0h43OtaqXNGh133lo5nq1
	Il/mEJN3QKkUQIO3H8lUYhrdvONgkydNx8rPrvpfK+G3ZeMSKmbdy3VZCLh62SIi46W8BDNICw+R3
	iHPldpI9thONyAUWtv+PXpTGnbqL7ShAV0X4BBkqzKPYoM51Amf4ZLuq+nQqi5B7TpEjwYyWe4hz7
	5POZZLtZckxJKI1MBzTFW0q2XAptZ7MyUExNhWiAwtUlCkMI6iTOK3x5AiGNsdKFGEDbZPJWT5Fjs
	EzUD9sdpfjsWjl3tuyiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAtL-0000000Ekkh-0sjv;
	Sat, 01 Aug 2026 14:40:47 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAtI-0000000Ekk6-1mcN
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:40:45 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49544f26c43so771695e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785595242; x=1786200042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9wyL+d+FkZCpC7UCAmaMDlbbmuXJOkXNY4cAUr9rC18=;
        b=AtEJdG4ZsW/utbLZsjm95iYG1Yafvj1BzzxPVJHEubofCFVsvMfO1JVCHMXimFGEQw
         uSm9/4m64DIwzq28QO6poSP6+LQXI4e56+C+XfaEHYRLJq4N/VPazyu/wqI0kz42pMN1
         zDjwa6aKNt7F/fl4uKe40QNxRuoTILRweBHiV4Bbx3JOo2Rh+sTAhooVbY4NNQwDglNK
         j2VeduvS/a0/qOLKrB8PIKQKIl3i+IWlahxw3pONsZmcqPoKpYitGjKQKhGUb6TICLGW
         dFlpSI38go9BLPTGmOg5f4bjOfU5pe445hbSJQzOaWh3T5VO8iOhonSeQW1byw2mHIq2
         ickA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785595242; x=1786200042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9wyL+d+FkZCpC7UCAmaMDlbbmuXJOkXNY4cAUr9rC18=;
        b=Qt4v7Xhxar6tByEUd1C/afSsoNWYmJRZyKSF3KdfcENt/BrSlpPqoXgl4hk5nteyld
         dHQMYlJnz4DvhsaXuLJkH9pLMTddtHsnGth0cBmImFqclQumQ0Vlk67m2NwNSPA7viRI
         T4NxoWR3YuW+aY/jt5r7ShUKlSuTOvueQE4mNSsOjqRJw+x8YvDrlQbXOOXJL4K0ROEK
         8HmOTeYHg0hlhFVFNN7+b1h5SJJlZFBvWa+R3nFPcWjMQRJOu2AIaBz0kv+a3UeYYnfd
         o3Clu9TsP/WPDIkxFiKsJLfdkjJY+AgAOlrjK0WrbY9SnLn6sCYPEoK2dDR5mqUFavzf
         Mk+A==
X-Forwarded-Encrypted: i=1; AHgh+RoCqKIIuZuZSrTMRqLayjjY45qZPr1rhnODpO/JAROuukXBGACe9Pm+nJ7G+gQjO18s8H9UwW9xJImOlDE9cw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz42GyjaUJg+A5WdgkAVDRIQ6qHuQNlhC45vChodabOpYwX+BmW
	6k8QGTcERulZBXknMfewfHvmocMXtmNdSyPiyPB2WcHHHj1LiMwJ3T8i
X-Gm-Gg: AR+sD10N/46t9OWx9ZO7ZukYbgvVWuzpm6JSDIj2vWYF7UkD6PxmtzjLbXua1tuqPmv
	ohXolf/nsESKHbz9GGjCJm8b8Sd0mIz4Dh30nTPiNQ1YU7txp8em/xVHCxNf6lQ1HXKgE0YkD+E
	0yLlIOIygJukcT+Yy+h16GJ3i3edFbymRZHPAweiymL5JbGXG1mBhMd3+tSFSD/PSzMnI+WopWz
	WcuQwGR6W3EB167iEH+UYqsjMG5vQ4K7ImocL7ysr6ek8nMNFGdPfOctGSgetgQEPOP5k3CM29T
	FJkJYRE9uPGFPtcTAVG3rqVGPGQGrBLj7V5uUi0G1KmYoR+lIm9PxU89VuI1LTdQNzwJX3baoCC
	bf/EXF6EJYqCRbN/JmahVGHdhSyRwg4YkPePrSA9W43WI9exR9v2aOM0hzTG/iyaq1L+/5tko6w
	piOy//7DEEgg3D1LYVz0Ym8S+MVw6KfVw/z7YHcN6j/bAfoMvykzE/n8lo79OGV7CkSIItGjIce
	38RpFjkZAfx3IJARiD/rsTskgDF8Y9d0Q1p4V9AKNQbuHX5eh3QLgG7J1HqzYTXYUVD9pMUkioY
	P1s=
X-Received: by 2002:a05:600c:3b20:b0:495:3eb4:3c6d with SMTP id 5b1f17b1804b1-4980c69d93cmr29227955e9.2.1785595242332;
        Sat, 01 Aug 2026 07:40:42 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B870700763FC51387692655.dsl.pool.telekom.hu. [2001:4c4e:1b87:700:763f:c513:8769:2655])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807b5f0adsm59197585e9.4.2026.08.01.07.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:40:41 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Sat,  1 Aug 2026 16:40:21 +0200
Message-ID: <20260801144021.7583-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <DKDOBW9CJ2Y3.10EEIZDTXPYJZ@cknow-tech.com>
References: <DKDOBW9CJ2Y3.10EEIZDTXPYJZ@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_074044_508704_07C44040 
X-CRM114-Status: GOOD (  15.20  )
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

Hi Diederik,

(re-adding the lists, your reply came to me only)

Thanks - that pointer was useful, and it changes what I thought I was
looking at.  Two things came out of following it.

First, a data point that may narrow your search rather than widen it:
this board is not running upstream TF-A.  Its SCMI implementation
identifies itself as Rockchip's own:

  arm-scmi arm-scmi.0.auto: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0

and it still fails, so whatever this is, it is not exclusive to upstream
TF-A BL31.  If rkbin BL31 makes your PineTab2 suspend/resume work, the
difference there may be something more specific than the ack handshake
itself.

Second, going through the archive for that error string, the history is
longer than I realised - Peter Geis' and Sebastian Reichel's pmdomain
work on RK3588, and further back "arm64: dts: rockchip: add hevc power
domain clock to rk3328".  That last one is interesting because the fix
was to add a missing clock to the power domain, i.e. the handshake
needs its clocks.

What I have looks like a neighbouring case rather than the same one.
Here the clocks are not missing - all three NPU domains already list the
NPU clock (rk3588-base.dtsi lines 864, 877 and 885).  It is the rate
that matters: the ack never arrives if the domain is moved while that
clock is above its DT assigned-clock-rate, and the same domain moves
cleanly once the rate is back down.  I have not seen that variant
described anywhere, which is why I wrote it up.

That suggests something you could try, though it is a guess and you know
your board far better than I do: if any clock listed in a domain you are
suspending happens to be at a non-boot rate at that moment - left there
by devfreq, by an assigned-clock-rate, or by whatever ran last - then it
would be the same shape as what I am seeing.  Pinning those clocks to
their boot rates before the transition would be a cheap thing to rule
out.  If it does nothing, at least it is eliminated.

Thanks again for taking the time, and good luck with the PineTab2.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
