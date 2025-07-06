Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1170AC83F03
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 10:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzcU2ehzXPdwKdDvag504MBqTjr1uKth1APUe1SZm5Q=; b=Ji6A2RjccHNaeI
	6nk4uAMjAlVIt4LO81uAnEV9zftaDFAUObJXfJb47b7+q5Zgi3Y45kChz7g4cDBjtGqXIPFe/6xKb
	Ii3djCj/iv+1QwtxDj3AcUKcJoOSKRn72JG+W/n247MNM+1r4AHo5982+nsFUADMgyT9XHLiQW6IN
	JU2qv5yccRgZqZI6ROPzi2FSqkXF+DEoatiMSS5PWQxL8B9IydQGL2i+NVCl+5JhMSiDGhH7qA2U5
	HYGhZJU6tq2VdeVinghPenrseQeYjqSHHAS3GnAjiB+g46Gqh7TqO+4jJRSwvMa76ZZcLVH6h6Djv
	q798fx2Yv/6l+WYuN42g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMUe-000000007hH-461y;
	Sun, 06 Jul 2025 10:21:08 +0000
Received: from mail-10628.protonmail.ch ([79.135.106.28])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMUc-000000007gY-3VD1
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Jul 2025 10:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=jy3swzlwwvekrdzd7oepny45be.protonmail; t=1751797263; x=1752056463;
	bh=TRpeYUjYOCK7fAy5xC95Yl5UuQXVTR4cjv4XrdE76eg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KIEVgAERnbR2vz9eE5jB3dxeBTNNIHZIFZuYheCWsRkuwVmh6orUQ2oIDGbxY2teV
	 C6hUUvSulbrg0mGhZEtOY8KGarvqrxhixl90ZEpaUoUcc26D4RuFxISHlorG2Oazjl
	 1STE3Wd5Ned1iAXjCXtzE54aMTm1PT3WLx0cD38cXhWoKK4VfRycJl3gMuF4YRvrLh
	 +Qu+oR6B3hK/9ldP9iozGDrDnsIdzVBb5maqhfu/zDdJ1djRy0B8SvfhhgrMDw36yb
	 ToqPTNSLg3vyx1WQWev9x1Y62uUI8op4fG1H589h8nxQ6ZPXHhXPyt6BW+0/PiB/de
	 brfhvlFt380gg==
Date: Sun, 06 Jul 2025 10:20:56 +0000
To: Diederik de Haas <didi.debian@cknow.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] rockchip/drm: vop2: make vp registers nonvolatile
Message-ID: <OWFHI491RHadO01jlQPA34GX28LC7SseKfNRwqQy4etkkJyP1YeF_0EDdAgpSXx5RW7go62EAOkedW5nbyn_hlz_K-NUrnNJeDFWv0OOSO8=@proton.me>
In-Reply-To: <DB4W0GOQZ8MZ.MA7QXHJWCTK2@cknow.org>
References: <20250706083629.140332-2-pZ010001011111@proton.me> <DB4W0GOQZ8MZ.MA7QXHJWCTK2@cknow.org>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: fd5f69f618c951cf7280e90a0113a2616a1050d8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_032107_155214_2CD78FAB 
X-CRM114-Status: UNSURE (   5.76  )
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

> Hi Piotr,
Hi Diederik 

> With a new version of a patch, you're supposed to add the tags you
> received for previous versions, like my Tested-by tag [1].
> 
> (unless the new version has changed so much you feel they should not be
> carried over; you then need to explicitly describe that and why you
> dropped them)
 
Forgot... Should i send it as PATCH v2 RESEND?

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
