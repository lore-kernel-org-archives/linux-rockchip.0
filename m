Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A90C79FB7
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 16:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee/hEQxbfwYplHbYBWBJO1G5sRU6xVUUzw1+I1HBOxY=; b=T0/AbQX8yc0mA0
	rsnxU92y3gETHzRL2QJTcWe70HSWEle+RcKRCknvijlwFVbj5YviHzwtxgyPqSDCIi79RWo7VbKFc
	pwDTtBJhUTpIS0pReoup4O/xaFyZAOfKjZIPb/uH4Mfapq02pX8s682QxIEUBM3zZGwVZ886a6gCA
	pzaIpwv0ROnpk92vqB8gHbJEGgKua4IOpDIQl6hkwmOfOtkJRGBidnskAK7MyQk3bktxXm36ws1jL
	rCET+X2uIRocj7wxz5It8D7GCk4FTu5agw3GiiM+4zucMWjcaucqERNVYeY9lFhd/MOY1gbJh4LY5
	H+xNYEwjQqDa9CqU55iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LJM-0000000CLnY-0ybZ;
	Wed, 09 Sep 2026 16:38:12 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LJJ-0000000CLmh-1bP7
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 16:38:10 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd82be878so3118795e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 09:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788971887; x=1789576687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MeVq8rDairowljrEmGCrzLch2/pf7DNyzkC5aOrOsz0=;
        b=CY+4NcVoPB7eDJUQax/cuwp6pIfJ76e9rY7zDMqRd893/zGjgJqMdc81sYahEwYrCN
         R87iQgYtECEgRUFigR82JRSN0VzwjAJk8zWHa99O7Wi3qtNORUSejiisEU9owdKL6/m+
         gNQrEM12DkojONQqjHMnYftNujBmnB8y/fbew/tJaeFwvGyF/O/UxVrGJdp0VTxixqRf
         +NTL8NI/ehdUkeUuYikzHY3xVcolZXqAY0OPU1azXSQOIDdWbbV5COqZV+SFMDTTtbbp
         qQCYH8Q4/ZTBHyhgHwTsfKdZ8NL/7/3mH4tSa7MH3s9+JVVpTzhLiAZZxs1etcGiOiXL
         KL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788971887; x=1789576687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MeVq8rDairowljrEmGCrzLch2/pf7DNyzkC5aOrOsz0=;
        b=jo7/LIgK84rcNCsyvFfaJUAiDC/iCunPaEPdbdOTH6/VNL2aOTU75mZEjGHiP768y+
         2F0Hwv/bYU1EHjcnEWtniEt87LfYGhYWS5LFVpykSvoleTjlP8XXqz66GSmX5adeFnam
         iO6Htte5r/l5Us6QjjBGQIjq3WAPEleHnbdfnJ15gTvB5iBJWd6uvup3aCoSS/YL0HIU
         cHs4DR7BUFboqzIDQxHDsayYZzvOKZ9X+pxQIfXciiGBH4sQxpNHX40Vedsag28RTP4E
         +vG2rVvOs0ayJIsWfwvcv6cOzn7VL38qZ+G20gD3iq72Cvxi1noHZZOBvQFpNLXfqrk0
         XIrQ==
X-Forwarded-Encrypted: i=1; AKwUvBxVius1g/R63RWe63DTZ3TDoBtErn3/EEK8JVesOw5DwjSIHuLAUTY/caiiNNOm9lJSY96Zv9lqqad1L+iL8A==@lists.infradead.org
X-Gm-Message-State: AFuF++krOWtqO+RsomyOa9PSsnlJcsB5VDXHhI9vpSvAEpIZwuUVN8QR
	VeOGAAkZ1M1vrjLOBqRRHOg1+TuSz8a79L9vpIL1KezJdhhAw5YjK3o5
X-Gm-Gg: AYBFou2q+cgRnLfn9+j6qhpPSeLEprk5hs8rYPedaCVbABqcLfzUwQW0Y2NUNfQfCwY
	qZkEvgDt9T/1uUEmEJLkP72sFE9Eo+WW4l3NxDtH1A8q0uoVEF+6qcJu3XrKQaRaCy3OdoMKRBk
	2D2cVRvpO71N6RHjahLJoASIJJbxvgf0kAydjiwZ8wY9bdXrbH+n3n2vvQIEx7aEd5ulgWhVkSp
	KDbjbhCkzQ3M1H7Qxls2EaSYbGMbxGkBx0HObgDpevGiDkmx06UZo0lNBA8LuofIkFrNF/YlK+b
	J7RM+jENTDRg28qBJA5IuYJRnd8h7SwCmDFE8T6nflA7h3RSs2f2U+jTUphjo+2RPNYpFN6kiym
	HSWpa59L2cVJtzH8x900xIfSKJYaRTktW0J5vNU3x69783m9fPefTlHeGThyxfB8J9tP6jXnbNH
	sd1AtZJGH+P1LGXNTyN7REoX3H3XuOVn3IeNRPoIGy8GXRmZb0Y1WQI83QL0/fJ/MJiFrI/3M0o
	X2HNiCn4M/LiicAyQv2njJz4NNEoqzR9Zt7SNTzc4xDm4DH728FTu3oRYb66YaAJozLpfkQH3gE
	B2gO
X-Received: by 2002:a05:600c:530d:b0:49c:e363:c66e with SMTP id 5b1f17b1804b1-49d01dce86fmr262368785e9.1.1788971887351;
        Wed, 09 Sep 2026 09:38:07 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900E58FC5516AABB3E4.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:e58f:c551:6aab:b3e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d20fb40e1sm66537515e9.2.2026.09.09.09.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 09:38:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/3] drm/dp: shared HDR metadata SDP helper, and max bpc for dw-dp
Date: Wed,  9 Sep 2026 18:37:40 +0200
Message-ID: <20260909163742.37003-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260909163206.36409-1-royalnet026@gmail.com>
References: <20260909163206.36409-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_093809_472434_25CBC9D5 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Heiko Stuebner <heiko@sntech.de>, intel-gfx@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, Jani Nikula <jani.nikula@linux.intel.com>, Andy Yan <andy.yan@rock-chips.com>, Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Following up on my own cover letter, where I said the series had not
been built.

It has now. On top of drm-misc-next bf63a72ea005, x86_64 allmodconfig,
building the five objects the series touches with W=1:

  drivers/gpu/drm/display/drm_dp_helper.o
  drivers/gpu/drm/display/drm_bridge_connector.o
  drivers/gpu/drm/drm_connector.o
  drivers/gpu/drm/i915/display/intel_dp.o
  drivers/gpu/drm/rockchip/dw_dp-rockchip.o

All five build with no errors and no new warnings. intel_dp.o is the one
I most wanted to see, since 1/3 moves code out of it.

To be exact about what this is and is not: it is a compile test only. I
have still not booted this exact series, for the reason given in the
cover - the runtime testing behind v1 was done on a rockchip-devel
kernel carrying the v9 generation of the dw-dp series, and mainline's
dw_dp-rockchip.c is not the file that was exercised. If you want a boot
test on the Orange Pi 5 Plus before taking this, say so and I will do it.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
