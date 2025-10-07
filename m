Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4FDCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 05:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8p4pZwY/ymvn3SY15WKyFKoqOyr1llBgmRyv7yfvZM=; b=33cbigtEjogfeN
	RkGExvSeiBap+eS+y0Z4KEE2hOZ/OBgZ/oFrq2RrLQjTKinzV0O2yjoHroU1em8xWM6qltNXs1EUJ
	Fe/PBZTo/4UT+2KItQPz6/5syxIgScMye4uGvEYFC8Exf/9K7j5xxXBWzHKcebp8FqzIADjVZjpk+
	NwCydVoIZCJrKL986ai1Po7mj/VuKUhk+UVhBWVjOxvTgEEt3+pdYxqKMl0pyckSDlJDmaOrkqO0r
	vgafaqcT1f9o44y/4zWVLhIPORN4Yqzvp0QTs8ZpYFKA112WbqNueU0N/06tz4Jk3KH6D+u4s2v7e
	64xWgFxyQ/zFrRj/ja5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60gg-00000001JqF-3G6y;
	Tue, 07 Oct 2025 05:56:38 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60gd-00000001Jnw-1HNM
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 05:56:36 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-b553412a19bso4187262a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 22:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759816594; x=1760421394; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zze8JjQGVZ59f9v5sepoZK52dG/J61vT00o7vhqIkGY=;
        b=CFj3/naYIvMuvYA1HPda3NR9ksW5LI9QtPKxWS6QD4X7ZM1WYN8yzQlx3sLla4eiTG
         wCcyOjpBlSh1oaZqo4BxapyPggDrr9G4wVu1EMu5XiZgVUVk/KT2v5s4TXeQhLmZdp/I
         2YQtDHu8Wk9zcIvddX7zMNFcldDuRYMNILGcZkXxLJ2j9X8DBw2SFR9wYP6rFUPwVDMP
         kDygZQ+DWyVllvA5Q6b1amXCb9LKS7sexDD5O7Yo+B/p96eq2O/NDlmqF+fWOOymHMEC
         oTh1kZvdP+YEBIexynIkwWcxT3CoVc89jII7gcRpgX7xrRIMH3gDg0fG2/f84HIhg/h3
         Id7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759816594; x=1760421394;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zze8JjQGVZ59f9v5sepoZK52dG/J61vT00o7vhqIkGY=;
        b=Mxs478rfwiz2CBVc8kY5AAS8ymBU0FqZ8s/M04UqH1esv9yN2N5QCGFE2Ip6BQpp2U
         aSJpUeQYDEgfogmzGdOPLBzfnFSUGISD/MkUQFiwnx/b5r9XGtEG824KQpQM/1Y8SDyV
         Ajg/bpdde6fzR3CwJ4pvzJ+urSMVkT3s8ICOfJJmMIiCidi2q7FpUdaBPTcCZL/wD+YR
         KkzE9uNZQeUOZ1ymyzmxe2aqa5eWIUKlNi87Zk5ZM2m/9sKfh5fRsmQDAx/4zgTQvlTu
         oOl5ME/SkcwWkZXwBuEawyVQWUXODK9hoRq1brw5fkiChIbaePwue77O3nAah4x3rJQ3
         yNCA==
X-Forwarded-Encrypted: i=1; AJvYcCW9PXrExHYEVRAgfMWa6kTgXV4DhMyqjyFsMJK5calDsDUYw3Sm0DCblrGlYeawm5dRVeYuJSXsWdZBFyZM9w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxzl7N4gaHG1e4XHeVGLB+W9zbfT5eWSblN3mebUaKbH0H/UYon
	37GnNetic8AbvOjkirLbj6xQmuv/YBZMtwnLes1z46pMy8pBMoHOzskQ
X-Gm-Gg: ASbGncuRDhPUSytko6UNtAvJt2tfZ4S+PWng3aZOXnJwZe1IkEKHLmgrVvKi3kyLjj5
	ehddsgYHfgdWWNquDAfHDUg6YVhD76DCzKvcZFM6yo6OnPXaFDpkqyS7XfAl+v9HuCc2Cr1WDcu
	UYfVXRHC2v+53eM7z+PkjtFsAmaPotiVLCnLIVwJ0faCqDlB/34A6qigl+avdShYb1RYWMuExPd
	je3riLb9uOEAf1VPx6NWfhRpjzJBf9H0VD9iK1rZBiPdjNt+Wbi6CZfHW6m+Asu3AGNY87uutLU
	tSklIAjtMhavB0ep5W/rAObSBqgt6tCtSrKserIzVqIDp4CFUJXUKwztFICmC8hgb0ifKS4LgfX
	E1NsEl5GqQPOro/hlK12VRzO7uM0MyR75Cq70xer3E+uIikZlih0SbMA7ykGXZkTvuc9jit6zzD
	A9XDWQFxBX1XnnmrqrKIGAW8jI
X-Google-Smtp-Source: AGHT+IGJchkaRL43RoVbJQM3/xqF6zJKcQKtxGwtkcJ6fAH1ggss6t03FonlumhoWLdanF+7D9Tj0Q==
X-Received: by 2002:a17:903:987:b0:267:a95d:7164 with SMTP id d9443c01a7336-28e9a6b25a2mr170679085ad.60.1759816594138;
        Mon, 06 Oct 2025 22:56:34 -0700 (PDT)
Received: from [192.168.68.62] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1eee04sm148269865ad.130.2025.10.06.22.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 22:56:33 -0700 (PDT)
Message-ID: <467bd938-6fa4-46e7-9f98-d8d2a9e74eaa@gmail.com>
Date: Mon, 6 Oct 2025 22:56:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Upstreaming Pinephone Pro Patches
To: Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>, =?UTF-8?Q?Kamil_Trzci=C5=84ski?=
 <ayufan@ayufan.eu>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <49dafe9afc5962d8fec10e6135c9b84d@manjaro.org> <8606261.29KlJPOoH8@phil>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <8606261.29KlJPOoH8@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_225635_348097_D7DAFC88 
X-CRM114-Status: UNSURE (   7.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,
> for reference for Rockchip dts files, the preferred format is:
> arm64: dts: rockchip: Do something on boardname
>
> aka "arm64: dts: rockchip: " and the rest is free form but should
> mention the board.
>
> But I'll generally fix those up myself if needed, so right now
> there is no need to resend just for that change.

Gotcha thanks! I'll leave this be for now while awaiting for comments on 
the mount matrix for the accelerometer and the magnetometer.


Rudraksha


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
