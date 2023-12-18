Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 691FCC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 15:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gDeDBjGBvRWiiPJ2XztJeFUYr4xhWzcC5FO7ZigetUY=; b=dnmVBqCdW1qmuC
	+YExXS2nrB2VOd8SM29S1Mo+iBx3BswesF1FxwXcn53+V54wxLgN/W5UDDSmzVUOUmCYJC//a/CpE
	4ahYwUgY2cYgZ0tfGjjoOO8jDBskCRukRfOPXh+q3MOpajLTXj7GnrMiOKp1HVACIuB/rf4cSS1zf
	tnyB8YZKnvHJbVsgvYm+PLdYaJ3ivYEzwwsLaD/3wLZ1l1PNNZ3ur6BeqvNG2sz8iDkwz+eEX5g53
	MwwtZ4RGg4H1KZUKD5a+mKKDDQrFQLsPnBA0Glx/KwbtmCSJXPgDOreSJhLAEzdSuOyNhRkjjri6I
	JzcOg8EO4ITNBu7wbT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFqE-00BHO6-1M;
	Mon, 18 Dec 2023 15:47:38 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFqB-00BHMp-11;
	Mon, 18 Dec 2023 15:47:36 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-55359dc0290so1826476a12.1;
        Mon, 18 Dec 2023 07:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702914452; x=1703519252; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0eNl2vsDtnWZ+IAcuQvLIHQD/Xi40xLCKLfqrufOQbE=;
        b=Uw04h78U7wEtawuXIzOpnJdLHs5X6/ta34stel5rdjqzaK5SP2c+DjmdjKqwF7Pfnv
         jIgOrGmga+wA6l8crWuYs/uwFKozOa513eAveuzL/D0qvx+wY4N7w/3xOjm5eAeocoei
         hMWSo0LQa9oWamWz+ia4R5+wMA1siU9UTI3vFmQkTbEeZjeVm346RqNmcS8p6ZMpSTHC
         1CXNPkfLW5IHSmON79hdLCbxQ9nnZcLGscmtXFJEHesW/2mhcvwehzUnTo8QGfFQQZgp
         7aI03Yi4OzFwB+tDXGNwNFUTd7G6i73iH7WWHcs8dYZyZMuJKl8VaiF++n5aoDmZEXFV
         eR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702914452; x=1703519252;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0eNl2vsDtnWZ+IAcuQvLIHQD/Xi40xLCKLfqrufOQbE=;
        b=YzTZPbxZlPtp3r5D9ZK+DAUkGFE79Cja1Pv+tnsSgeT74vm7W6d+ONtYhfhaiaqhe1
         CUchYkDmqh+A41EJ/6HXNxO+XaRejDb7rDhU7UYLSJ35Quwij8U+e2pc+Ng6mrQDbtrH
         L/8/tLhbQPFOk9FdNybHhEeOOCbKHzuXnfFDWZT9Qo4N7oGpm12aWgEfKMIiQXr6tpi9
         OHQtl798EPlgsdJDI/F4RNdFmVO1gSWpFUf33G1RFMtSZWhEd/qVLGErjJyYGxoBNsjN
         3ZWraxZPLNge0QKhNpsJPe4L5fI0o5hw0DJgFJhAH34ulnZ9FfZJ1kDixSkulDdmPP6p
         xIgA==
X-Gm-Message-State: AOJu0YyrBUat8U8fPDKpDcHSJfnetGr5ZA+NfgI9rmIw6iU/wgGXn3sZ
	HoNxSdY7+5sXA/ynjhUBE10=
X-Google-Smtp-Source: AGHT+IHC5qktQQ4b2sM7UtIt484SaKUejdtlj+rponp9uZJ7sZ97THniapcreVMbePgmnF2+r8RohA==
X-Received: by 2002:a50:d6d7:0:b0:553:2f15:6245 with SMTP id l23-20020a50d6d7000000b005532f156245mr2498083edj.26.1702914452056;
        Mon, 18 Dec 2023 07:47:32 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r13-20020a056402018d00b005537b9f7ce7sm216914edv.68.2023.12.18.07.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 07:47:31 -0800 (PST)
Message-ID: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
Date: Mon, 18 Dec 2023 16:47:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 0/2] Rockchip rk3066_hdmi update
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_074735_372284_3745AA16 
X-CRM114-Status: UNSURE (   7.26  )
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

Update the Rockchip rk3066_hdmi driver in a somewhat similar way
to what is proposed for the inno_hdmi driver.

Changed V2:
  Drop already applied patches
  Remove "Remove useless output format" patch for now
  Add fill_modes hook removal patch

Johan Jonker (2):
  drm/rockchip: rk3066_hdmi: remove unused drm device pointer
  drm/rockchip: rk3066_hdmi: drop custom fill_modes hook

 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
