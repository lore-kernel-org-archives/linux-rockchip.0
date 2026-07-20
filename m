Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D3DC4451B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 05:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLR90GqePuVQv0dcETs6aplqH0sTp4bFwVrIV0oBG/s=; b=xHULL100dG5100
	FSuH0kV1D7c31139xRvepYKk1TPN3dYq+2UlK7UhKQaNc5hlsxMq0bq1+viEQI6uEBuqLhOp6vFZ4
	nrEpJEN0N7wcd3bxpgX5fCU/dUDt2znVfPHB0Id/DKlqRBLD166QFpp1CvfvuVdBQpISHFePCYsnx
	FPaSxr6lirKl62Ww3dPU1D1KRILIXhS8E4Qilt+oNQf/tZjZngjxBFJB42Lyo/gnlGC20bjjRNek0
	2VoWUDgiGppCl08Jd67o0Jkq2zHXGcNHpL0O5s+ZwK5H6QQv+ng93Gfdu4uPJ4r/qwtMHP2RqmUoa
	f92Ink3oCnxT/TJg+Edw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlgjI-00000005skg-1mBN;
	Mon, 20 Jul 2026 05:39:52 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlgj6-00000005sVz-1ea0
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 05:39:41 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5b00d1e7082so7300615e87.1
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jul 2026 22:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784525978; cv=none;
        d=google.com; s=arc-20260327;
        b=CGYDKqekPUzpfJsqXjzl9KIiM80Oe+kgY4AEJWl9if2+nlfZBjoAp1fdrEEA7camOY
         f0PRaD3ItTn6GFIvpbIbx7bUcNitSqkV3n7VTEt4YAx0hv3VxpQroZsyTdqHYN4x7efe
         EZjhosxRaA/OvYb17meJRH7F1lKZpmXxXYwi0enP++w77aUWiinJctIkJuiA+kICQWQa
         FGzl3lbZBwX7ggUzVo6I5uxFaX1N4s7nNuu879t+Xu5dQrgQTWB+S306pYNhG7TFWdLb
         W4fMbVQAQU06WcX58O8omP62NVpT6HAf+zBSRYsvCiKgdI9608mk2DoO2puHggEtsL7c
         kNtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W6NVY7nCUOS6eRqN28XA6yLYq6AGh2fODwowWpZd9JU=;
        fh=huiG6otB/41lpCyL9hZiFD7W/uYwUAaBi6eWxnFrAjI=;
        b=XM44tPNm5T9AmQAY5GQsqygu8tLGVyCK4XBB3CHymESiH3vmIple4Ytqh/2tdHzZOH
         V8F5tt/IhxzqyI8oOUf0r60kCZoYV879VkP9mwDwMsq3YF8HSCxifI8jjFlBbGFNJuTr
         wTlT1lte7X2AN1O2CGiZ9w1mO/h17yG+Vje6mh3+PT6Spr1gPHQmOS90rXiLQVqMgI+7
         meqJZw1ZYogGTrdeezLYKXRy8rBoWXcgI3rut6SXk5ZfmnM/67fF3JaWr+W+7unKbrP+
         BAd/HsJQgJINxw2MwaM4usPyG1uI35n17sfZNsaMfLbB71LdvNyjyhHhQNZAZxpdf5T6
         hEhQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784525978; x=1785130778; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W6NVY7nCUOS6eRqN28XA6yLYq6AGh2fODwowWpZd9JU=;
        b=X5tLQybcce9Lnp67epTNgTPDD9hWWYiw6G2/6SHHe9GnuYHm/LexVp/Z1a0WNvSL9i
         M5HJLFbyjoO8hgTwFMeHFWEbV2Rl9oDTbvz9CEDgZjcmddmtynMuz3Oka56NPwvjsTYY
         7fWIrqKiR0547xNWw6XG3ybOOTryY0NwMIzieThwFnPWsLNaTWOX0Tsz+RqopSl3KG3d
         jOD2zGTpoHK0YZB6rTn7snBdThKgFM19igBRrPzIH1THUL5x9LfgCX50vcQZwn/BYy0o
         IzUMKg04ykqvkrZA/HhcGBatDksL2ywV7yOV5qeRC65vdrq41qnVPJCjy9xbtsuWVZie
         fjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784525978; x=1785130778;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=W6NVY7nCUOS6eRqN28XA6yLYq6AGh2fODwowWpZd9JU=;
        b=T4Llm2vlSpU9Bixgd2mfqWkoN2kcllrgsXR7iZz3ZaLWA+pFXC0VyeTF7m1LSEiMFS
         UfrYm9gdmgArIr8lJFJFCX1yauhIGfjYa2koXBvl0QyT9s4Kc8uW+SgqQU/B7qBphh/A
         GxKqqU8/IuEdzquzJ8g/sx5hZIKNxne3kkHHklNZPPw3KzxKFSeLWn4R+oo7ypZZxcYL
         C6zrPgZayGAKft93Ju0pO3m5/AHxQEIaFXmu+iUxR5huaSY8hugFhiAbBNhJGz1WEux2
         9gT0rR2mhoAqXyTXIfVQ0Syen8iYXwxQjZhbqV7o1hyhzhLfystOSY2xHILgtzQkSS5b
         GmAg==
X-Forwarded-Encrypted: i=1; AHgh+RpT24cWHbPgmM/uyxz7md5L4sPA5iGCWWg1pFXKctS5nIDIom+EleM6ImYIsUrVEBnFT/cSuJgh1HxWSmJSIg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz08akSMyVdWsr8nSUI8FzgQ5kwCEwIV7oL+EK3bbv4e0Njh7GD
	jT/OaxDxFIrJ+HUTySeZLqML0iFAv8PDLryPLMTfnu3ZDQ9mQfDMk4um/H4ymgvU2P2I7us17NO
	wvL2cyngzG7xUZSPL6Kd5d9dHBxLtKtM=
X-Gm-Gg: AfdE7clMpgeH51xVyj3khPezdN+7uu9UaLDHRqv8ZG5yAfnM3aaJtIuSUIbq+yPacZK
	NXR5x1/ZF2dlmRRKvjVSsTVaRSq4404Hb0FXGYRPurqL+yfNhBcpYeLbB6Owgi4SllQ6pnm3lP9
	ZVtx9fGv1eY8Q8Oeth9m8NNAsJfgh23FrrKC6hJkzktDNp58cYLTHmQGqUzMk7BCwG3adsmRobH
	sEd+pSJEQpCgtFReCuGkBpX5+/haFHq0PzpkihlfF1NcA9gVVkfth2oj3Hz
X-Received: by 2002:a19:f518:0:b0:5ae:bf95:38e7 with SMTP id
 2adb3069b0e04-5b28f87cb15mr1651466e87.10.1784525977505; Sun, 19 Jul 2026
 22:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260717120005.2087386-1-rok@kanardia.eu> <20260717120005.2087386-4-rok@kanardia.eu>
In-Reply-To: <20260717120005.2087386-4-rok@kanardia.eu>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Mon, 20 Jul 2026 10:39:26 +0500
X-Gm-Features: AUfX_mxWr9jRQfWnrNfb652ggdrTJfNDWLizy8QL0xejOpCnF33xEHR31Qj3tRw
Message-ID: <CAKyg=SV2-81VFgr+Tq=-Si5EO-86MA+ZFoQ+DX1fEYdnnLYJng@mail.gmail.com>
Subject: Re: [PATCH 3/4] drm/rockchip: lvds: add RK3568 support
To: Rok Markovic <rok@kanardia.eu>
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Jakob Loeschke <jakob@loe-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_223940_495365_00108321 
X-CRM114-Status: UNSURE (   7.90  )
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

> Based on Alibek Omarov's earlier posting [1], with the changes below.

Hi, I'm Alibek Omarov and thanks for picking up my patches. I didn't
had time to finish them and these days I don't work on hardware that
uses any of Rockchip SoCs. However, if I'm not wrong, it's still used
in production and I had report from Jakob Loeschke (added in CC) who
confirmed it worked in their setup as well.

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
