Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01DE3C982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNR68QR7lY0xjBCYozuB4INb+HtkD7PSJgjBungdUqo=; b=fZ6BoPPEgJqXeu
	0U7QQXjl7LtTkz/stOnC7WwqwUXxi6IVWiH21h4pAPjQwkDvY7TQgAu8HkRPz1EHeVXupnm+CMuRW
	Q+4+EQXp9Ehy0y1TUEjzk+W3q5NsH7WeogRjpCHn8ytkhlNL7+uTyCy6OM8FloKReL+4BZWfG1MM3
	KUXW/nD2HXOzzwD0ekIBF8bK2D8zlCDUonrg96mJIg7Z0jpHsy2th0A64qyLeo8oZI1UQE0Yi2eVF
	ui6M1llROWXbRhXkaUtIC9Ms5lMvrIW1EkvffNmCqQkVijb2GwU4S1N9uyCUnc64hk665EiN9fbQy
	9RHadVD60C1qu2zz42NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wIK-00000004mrM-44le;
	Tue, 22 Sep 2026 08:56:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wIJ-00000004mqa-370Q
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jHvRFtQyx9UQ53om8i4AUQfufcwc3sWn9Gux2Mdm/VQ=; b=CPPwvpoQNWEJp0CvKpPiG1lZCf
	h7oIiYZKGfCO3q9dBwhybovgqc3ylkgUbVQupmR2hpMqKljnCqlfSzNFl38bLUy2+V65DyhT6isIj
	Uk8wyx1hQpGZVGNZY71ISDuORDddcKA2rNtivZ1msJq+t1f0qOoBRZzwKbKAvKUSsEk8g1I5VYoO6
	8bAbQBxGaSkDA6dqUY4sFF5iJbwlS2sJj2E8k/ByIbaSI1n0ShWWPCXRUobmSiYEyT8V7nSHNZikE
	36sZL9dTdmh2U1bTQGiQaySuTpLutjLrsAie2W+sYMHeKbBw5oi9E1Wm8CtcledBpuE0DyfYebdA0
	L7B0DsJg==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8wIG-0000000DJFR-3REJ
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:56:06 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49d0726cdbcso2063005e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790067363; x=1790672163; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jHvRFtQyx9UQ53om8i4AUQfufcwc3sWn9Gux2Mdm/VQ=;
        b=mIYYxSmZaBDzaEVFekMP7hHr7y8hp7q8/HQ0H1iNnXFACznK5D2UmPyq6hi9yKeXBm
         fwVZyE2UGmMcZRIE8qnHyOWHBdli4YEB3zxqowfPsJ3dm+DnBDoED7oNyLIopL22XGXg
         OJifm0ED6ajNyn/rfmGb63NE3GTfLcSK3yCSVNZTfmXzO1IWXT/5RmhaTkDSz31ScF1L
         Q4xJD2VNAA+vjVCUuAh1ONX1bZ1+iwc/zvKl1T7k3nndR2htVq/JvuCpXp6UlMT3Bj4X
         qNiqZKOzvQKoHRZNPNk9R8vguj+bctGLCMzz+76D4nzZ6oIdEGfVQuit4gH3o4BSGwMN
         psKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790067363; x=1790672163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jHvRFtQyx9UQ53om8i4AUQfufcwc3sWn9Gux2Mdm/VQ=;
        b=aU8tnXH7TUn1dFIf/hIpyOhQML1wvDvnvSp0+rrpXFnihSVHR35ppGk49fPIn/GEuj
         e98xWj/wW4c+4KJ1pWpylJqJRvQqhJWeTexJrKEy1+xCSAu7Z7BcBrluzm86QKLXzy5t
         OR493WLQa/ncNATpgFXp6IN6fucyZZTok9oNDc1SjwML6kJ7LgEBpt5YJA/9rWGleJNc
         Oczd0gTlGh4Y5J9/gjrJboPkgOgEl8zdcBTghh0MM8GmePRMiZyvuU8Lcf889IJk+DXn
         sfL0LWSJ3q2gAANhvprS6SlThN8Fvy7C8cDTtT68LQDbGZTLnsewvLXLuDEnQKYUr0/l
         Jnmg==
X-Forwarded-Encrypted: i=1; AKwUvBxAnftwSLSdsEvoXcWh//80zOM0dq8JVJEJB+s+cZs9xrSJGTTTgwkvoVstB9z1NE7W8BO/GFzcl6hOQWojUQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nyJAo6YX1uX4zBdfoisPg19TMkcFT6zwe4Stbyz0E/8fiHzQfN
	yT5zXvpmVT5qXQEyoM+EiT7ye7zfjrLGysIr/p6nHKMOdMrV+BOQj6C8
X-Gm-Gg: AYBFou3bLTT62KG2WToEjmOQctaF+9AaRTn2JhbxiKhQEUjCNRNCx8yEHfZvGveu39T
	+J2MpRyfFlkpcImDmWaYiQUL6vN67EC/eLFXhmF8APhO0EnhrLsUfUFB7NgX1sZ7vQJwKchrnn7
	ijDzhVXGL07kmBLS/B7I6G88HZHlB/MGAcZMuVJ289cNkDBmKDqHvHo9mmZ+4dOpZ3gpLTJLEli
	cLeUrwixdPds+J/Znq3FZhY2nt+MtjbetNNahd4YTDO0TWSpSvM7AOePBxXU/3LZ16+iIQjEgIL
	Pwvi2KOlDRUVEjfjVtfL8jYlhYmuwu41qrWD2UFHSieDsqNTPtG8HsR4LDFsejIPgCNYtIAJ3Lo
	+3eIR0+ZIcP1BejUp844FiDmQak7I92K2s71YOzYpIr2mZKgelGpVHaQKNgAt2/b/CPwsl43+0o
	kVRCQGKhD9G/cUGCZrA6pXbuY4Jqh6Fh05TUH2ahG/8XuyAjCuLJoEHU95Vki7HLdPkIEzoNo95
	zw000yR0H6Xc8M9XkoA/QOws1+d2bxQ/EHHaq4S6xUA3r9SX+bNlQIVzMkSeUm0TLSECIcky2hw
	RCY=
X-Received: by 2002:a05:600c:1c13:b0:49e:7186:f36e with SMTP id 5b1f17b1804b1-49fc7dc1e75mr211705895e9.1.1790067363190;
        Tue, 22 Sep 2026 01:56:03 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4886277e611sm3538781f8f.18.2026.09.22.01.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:56:02 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/11] accel/rocket: restore the NPU clock boot rate before powering the cores down
Date: Tue, 22 Sep 2026 10:55:37 +0200
Message-ID: <20260922085537.53363-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922081326.B46651F000FF@smtp.kernel.org>
References: <20260922080114.44662-1-royalnet026@gmail.com> <20260922080114.44662-9-royalnet026@gmail.com> <20260922081326.B46651F000FF@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_095605_097713_D3F00DEA 
X-CRM114-Status: UNSURE (   9.70  )
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

On the shutdown question from the Sashiko review of this patch:

The gap is real, but it predates this patch. The driver in drm-misc-next
has no .shutdown callback at all, so a reboot or kexec with a job in
flight already leaves the cores running today. The callback added here
takes the devfreq device down and puts the clock back to its boot rate;
it does not stop, drain or reset the cores.

Quiescing the cores on shutdown (stopping the schedulers and resetting
the cores through rocket_core_reset()) is part of the same teardown work
as the use-after-free under "Not done" in the cover letter, where a core
is unbound while clients submit: both need the driver to stop its
schedulers and cores while files are still open. I would rather fix
both in one follow-up, once Tomeu has said which way he wants the
teardown to go.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
