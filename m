Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D05C79FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 17:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZD9cfnnlh++7iv9BtJX6nDXg9klkcqBc7a8QAmI4UOQ=; b=fxMlJb4+He8dgF
	QwmAFohxgd4FKBXGsBuXbl5PM4Ept2vsuKqXGrAwlr8GQu2UMI0QU9t9F6BeqyBpX9nqvJbKfOMZj
	Oh53Z6CATSL+G3q5e0nCjYsEQhnTUDvbdEJ1s4L0wYv8K9DPJJzBETVLn+ZO0bDE+0Pq0AMC2Z58n
	1a9vBkSL7PEXKzZb73tH3JAsewnkhbBdW7KbNEWIuQClpd5h3D5rWtF8A9ofbazpYhfw1BnAjSuM0
	vRQOyVB5H+EiVwf8r/WYFoGIaGU2lpLBcso1cN4nsMFhzxxyk0kRiyJc1WJPObsa5bfL9Ml4qLnLv
	RV4pUdo/JT306ZIPB3zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4MDU-0000000CVNj-2OsC;
	Wed, 09 Sep 2026 17:36:12 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4MDS-0000000CVMp-1dp1
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 17:36:11 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499db17b40eso2293675e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 10:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788975368; x=1789580168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K5xZwe6BB14FgiUoJeEDcecfAKoT6SnPT8CWcokGDbQ=;
        b=gWgUbP3cr1cg+wOoSQa/cB00ZQ48MrgdKdI0lGtXesZZGbsZ48wBmkuqembfLUO21v
         HnQ7oMdR9jP7MbFA4RLwg4Gs9KsQQ0TCG18aulr6TzmQuHeKblgd6E0Hfu0qJMgO/LCh
         IN6LEH2NOu9V5hPgfkONUIHNm/xLvK13acJSLwvahco+VAM2LYiMJjR6mh8HIJ5/WIH8
         YSxsUwiM/Y9C40KBJRy8ecG8Z3O9ysg7NTp8tuvOtP2ayY8idXYaPd4KAxuxM0vGMhDT
         3XXZoJ18q+X9MmrAquUU+/AHbOpQA2YZSWe3sGmzJA+zRYia+6yfQ74+txM2IeTaXzuh
         r4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788975368; x=1789580168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=K5xZwe6BB14FgiUoJeEDcecfAKoT6SnPT8CWcokGDbQ=;
        b=bBNIcn6qG0YZOO6tjA1dOhk46+cp1Zuu/CqeVZwjerHiQD5wZC6uajAvO6veGWkHpz
         Kk3dDh7ruU3O4UnNR59fVvpryZk0FGL+AUnwZ+1P1G41Efb8F9sT+c5LrqqAx30CdzpU
         TmkTU9jbeF6JG8RRmXMwRCf2QMUfFB1M7UK5QZsm8qrMb5BOJ58bC7j0QYWzlXlEibRr
         RqIbWJaueSt8uN3f7SpMzSkdxDWS7cLp0frzTkSOxf+RuuIedzFC/m+YG6QjcTW0dVoF
         4Qr3X/Z81weJOmvfPprcSsec1xMpsIF8q3L7M4z9c6h710KJUHapguhHrxksDCTdf2j/
         rz9A==
X-Forwarded-Encrypted: i=1; AKwUvBwUn1wMfwt8AyL0ACv0nImFsAw1aGZrpVnm1DuDS4M0O1GTwnfGePgAD8mraXF6WHqAfpoQKA68qEatxHy0Zg==@lists.infradead.org
X-Gm-Message-State: AFuF++ntUyeAzS+e4kSlFqc06yoaY9XXNtKZIOb5O6FldWp9dyw39kmN
	G3SawDhHtewIoxNBp8vlBnS/1zANh2dHriQouS5z2iMKSzqAVpsCPZN9
X-Gm-Gg: AYBFou0eaIc3i7sqXfgPdzSjB6Om1b4cjJWknHq9Tj4EA4CbXKt6oUxlzWiBquSCwFI
	7qVuFWDwOlT7nqi8uC2dz3WZQnMre/GDV6brKGOqi7oIcQ7JFacJlBBiJPMI0piMfCMeg+lfhiv
	ljHRfbeiTrYMYxC1b+41/fogzZdLp+4P+IBMA0gP7ziOW3a+pltFEnilBHRLr08Ppo8fo75w75S
	ZKOk33nWq3VemIZUIPbZ00R237XsXgYfDTC6tFYGOHoJqoirOoPqeq71MuJDI62unYFAaHCGgm3
	KwCeKMghGFQhsKybE1FPBZVPGI5cU11VwitZCOVBMl0SVSRSh4QAZ+6oOL02FzfDW6akkQt9aE1
	5eE18P90dEq5jPXUCpIrtu2NqFRVTmglxAuy4A9MZ88qkGovBsGZXeHZraFZSIm2Du+yUSMttXk
	s7Q42zPAM52Q2pfkk6UIT+K4R/QtVdrm7kVmL9+R2x/kqvpoIHjSEBzO2KfHHVTbop1A++x4i1y
	SWiYngoviGCZ9AUUnYK/Y/lSw1ifWxIWy73OQfAfW1c1eGKy8IhrJ+mLWaH/3jVvX0IUFb+m1N6
	jA==
X-Received: by 2002:a05:600c:8485:b0:499:5b0f:72b with SMTP id 5b1f17b1804b1-49d01dcc32cmr256409415e9.1.1788975368210;
        Wed, 09 Sep 2026 10:36:08 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900B0110705BF092680.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:b011:705:bf09:2680])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d26c06f04sm6876575e9.13.2026.09.09.10.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 10:36:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/3] drm/dp: shared HDR metadata SDP helper, and max bpc for dw-dp
Date: Wed,  9 Sep 2026 19:35:37 +0200
Message-ID: <20260909173542.14030-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260909163206.36409-1-royalnet026@gmail.com>
References: <20260909163206.36409-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_103610_447163_C0DF1A75 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Ville Syrjala <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The three patches of this series never reached the lists. The mistake
is mine: when sending, only the cover letter carried the recipients,
so the patches went to nobody but my own inbox. I noticed while
checking the archive after the fact.

Resent below as replies to this cover, byte-identical to what should
have arrived with it. Sorry for the noise.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
