Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA9BD42B85
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 14:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zb5UjPPuAv7o1tvgmKTR5DEb3j8OL7WLEEIiU0RiX0=; b=ZqCCwemcbV5Geb
	gf+m7Lg7ohKEA1sxW3hMTOYgvvEocyOJDvpgaa/pNKoXvSBb5PIRL4OwAIUeicHDN0Z6BldomZsUy
	KcNtiyqS0sJ3mA96ecrA5qoWRMpiR5YagGyDoD2+GLg9qgVDaHUZV12dIiFhVxv7SBsUg5Fi2/nd5
	jjphqv8BkBdkzfyGb1zOeBLTd2v5b0wQITx/gJAXE43u408gzXwBj76+IdVBWJWNWF4K5glhsz2M2
	TNW9UfToCjJCIougXpmBJ5C0sw4ygvRITgEf+L8B8piGkHkMzbR/ruzUboscGt8qwl4rBmJc23Fa+
	vN2lu/V7dXwGpSHq8aVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsLW-00000003qzb-2C8r;
	Tue, 12 Nov 2024 14:58:22 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsIV-00000003qFX-0vJu
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 14:55:16 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5cb6ca2a776so8782085a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 06:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731423313; x=1732028113; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p7+ge7hJafVQtjpuuqP/E88xzOJBZSOXD8WkyCEkOXo=;
        b=mcPHjwcr14zg1Uiy52A4656wx1CrKEwZz062quNr5NVBznph4VBN/myJlKGdMS4W3u
         Vfe7LLnVkJ2GvnPNnLwnF2BJUGRsFEGPXAzwZkmx167Q0ZssuEGB2lEbi9f5NruySlCA
         4ebWdoNLtLQouMnSCi9LBXApCKN9BmTyBh2sZjxti7hb4x1xkr/rzLD40hR5Vorg7qEq
         FvJOemV5YgusvElyQJD3y3tEQsXmSn8LYbDFrnOSpGivvpvhdV1jRiZPNGSrZZzvLsZR
         MhJO0ogutkt2FPRJ+wVPGnz6Wmm2QFGRXjrkSONDtz9bt472Ru7mqEe+gnP8j//KcP5u
         hdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731423313; x=1732028113;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p7+ge7hJafVQtjpuuqP/E88xzOJBZSOXD8WkyCEkOXo=;
        b=tsDR90q/GmwvfIcpguHlbRst25tZMMpBBGOM4sbkT1pUDw5kmh9ttcB81EPRc4akGJ
         3yqvvNq23rr5ToLkN02uc4PrupD//CDKRchlrNxxaivxhC0p47Q09gUrAyfj7oxcmyTU
         FlS0CZwN6qxcIzPoz2k0XnkRDeAA9VNqr64geuFIhV2E2wc/OcEYLFsVPGDyX3ayEuvz
         JvwFIKsLwB74KZ8JKkgQdSEh+7eNzkWZFPMzjwasFP/M9HsplRyfuBfpjMgGcmVgfB5F
         19qQH3cQfNSe2anOj4zvqJE65FDGc9XVuLKxElhuk207yqFt2WJLQG/d2U8AmOD6LDOK
         Sn8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNBlZWKK5QI/yAJ3FU15OsGJSDawm0ldAb0Ss99G55jVLUfHiuUfeC7Yg1aZZ+slMldxVxQpzzFk/BbNO75A==@lists.infradead.org
X-Gm-Message-State: AOJu0YykKCxu4w7LFnwqQCCdDZc+tx/H0J3Kf5/IjE8kl8o+dI8Fer1y
	fq3QNX3S4Uynt1bYgjXNXIsTx5DsOjP7K3MTDYRRIWaH7imoJcLe8tXOPjyY7FxrtktR141J2mW
	Q3p/gOZh1h7gseZOR8sBaUrzg09IzUczi//rKSQ==
X-Google-Smtp-Source: AGHT+IG5vgBt7SWz10m4bwHWl3WshDBGFWCRIXZLwIVJzAVLym8qK1LYVQnvPnJBn5988rv5zM1s0M0FA1lslSV8RBI=
X-Received: by 2002:a05:6402:34cb:b0:5cf:a20:527b with SMTP id
 4fb4d7f45d1cf-5cf4f3c018emr2916662a12.28.1731423313055; Tue, 12 Nov 2024
 06:55:13 -0800 (PST)
MIME-Version: 1.0
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com> <1731048987-229149-7-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1731048987-229149-7-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2024 15:54:36 +0100
Message-ID: <CAPDyKFray463L3NcG3QF6Qi7q0cz15Z7sO0gEH1OgB7EK5GcmQ@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_065515_291197_B95588DB 
X-CRM114-Status: GOOD (  11.50  )
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

[...]

> +
> +#ifdef CONFIG_PM_SLEEP
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +
> +       if (hba->spm_lvl < UFS_PM_LVL_5)
> +               device_set_awake_path(dev);
> +
> +       err = ufshcd_system_suspend(dev);
> +       if (err) {
> +               dev_err(hba->dev, "system susped failed %d\n", err);
> +               return err;
> +       }
> +
> +       clk_disable_unprepare(host->ref_out_clk);

I am not sure that the host is always runtime resumed at this point,
or is there? If not, we need to call pm_runtime_get_sync() somewhere
here and a corresponding pm_runtime_put* in the ->suspend() callback.

Of course, if you could make use of pm_runtime_force_suspend|resume()
that would be even better, but then probably need some additional
re-work in the ufs-core layer first, to make this work, I think.

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
