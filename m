Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6763A606A32A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 06:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZHKJHxmh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WSka+pfu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/XuAp9KxAyy70cbeBp4in1dMiAQMnxF0v6nXjrj9eSM=; b=ZHKJHxmhtwVcIQ07bqvOqngxb5
	MfmR+VBEEhfXdozpr14rYiy6wwR5HGJcbhiuScdMrJXQoz8YjKdW6+7MNsuaS/pFaiokS0LOU01CC
	5XPvhJNo2NJSvrfN4wW62FdHE5iI/jDKEJIuPFPQozaDCjDt5uqHd/gRnHr+900JTSoSfzwj3uyZb
	3AwsjIifzfwcY0fWl0rD8akTBxJPqEKabv2v9VGKkq2OTnakz82/JaA0pQqIxEZBbXJXKWrJwaYXY
	TkkmwCFCnCEDV6AVuc7QubNxF0apXWhid4vgBXi+CbDfNLm314V1gFVfHV3RNuCTJdkM7zoV+W+Ht
	VvyAQ1XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTvGb-0000000Axbt-0HGo;
	Thu, 19 Nov 2026 06:05:05 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTvGX-0000000AxaU-1v4N
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 06:05:03 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c4d28f75d62so311373766b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 22:05:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795068299; cv=none;
        d=google.com; s=arc-20260327;
        b=sozC0VYz3loL9kIwx6z2B/cU6Qt7awQSoYbcBEIeHxZmc35V6A2LIsPuX165OpwWX3
         Q6+YRMPLWb50XGaxgEshMJrIqrZWe4/3vpobNm+KUoo81mWVpGBnMhy0A8HDaP0cCgJv
         Ek/h7sP2iiVFauMcOybSO9z2jUcJh5//Q71Bu1OAFPVe9fvNkt9iK31zA5oIq2AEzg5D
         U3iG2sV7DjM696Hdf5PrP9Uldcqg1CYU4IAm1190rANfhGJ+DJBs8YGNqQG3U/XXEJgT
         bHf2G6PN4q7MxF0zld+TFs1OMFaXbNogV8zGYA5RU7fPSwL4zKy9OBuYSDCMiPAknyIW
         2iNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g7tiKu6iToFwXv5ORc/C2e3umAfzd5HxlGVwlZD9DEQ=;
        fh=6GUfMQf1PKtKJux8gxlOOVygD+fMC7TVLqCKFCrlrnk=;
        b=Fclhn31407xsiA23ZDHg3rLI/gJoUWpautkzPZYGk+tXy6aVBjlKBlJq2apy2qqrHY
         TNu6tCLHkdh6kcJjJZfEmlYaqKcdxMGxiALbKHcRWFaKRsA+DGQQt+rrM42ryoxVVOLw
         ZQlPisgPLf6EyMEvZ6kKf7ChvYDbD7vHIswHJ/IgStr4be2m74HSh0072eRF1qPhbVAl
         yFUevNPGgeVSfePweIunEFp+qDY5fdlcuYB4lZIBExw8zV0II9rZ0VG7F4wKgLbMW645
         HJDHj2O3maGPqYjfMAgogpKaGw3kp+lbdBFhTkbl/6ZIbQ6Szct1KERE1hwBDMi6Xj/P
         hUpg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795068299; x=1795673099; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g7tiKu6iToFwXv5ORc/C2e3umAfzd5HxlGVwlZD9DEQ=;
        b=WSka+pfuKzOVMBHEor8x5K9S3AV7Bph1GrGLkzEChC3W2KNiJoNi8dtqBU/Wc0M9uw
         q5BmYio/4mqf09dlYFyvR00S+PQLT3+aFq+g5M33kg66gd+pD0O0gaAqzAXknNhotHot
         IX6dP8tqGWJKDcFAil3zkkVz4KXpZ6gA+0kWBOq9q6wtHw2tQRP3tRobLYOHkb6cDoV5
         MutY31eXwat5MmEATohe3ApAo1UTZ6QU8d2CPHd4svKgriGKZ2PiRGckyO6n1L29gZjB
         g+8cFaXC4gPwWui+DZMFikyGoZGVXLXihk7HvVK8UKYliWT3F/ieci6LBIZrxZpJsbhv
         Q8Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795068299; x=1795673099;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=g7tiKu6iToFwXv5ORc/C2e3umAfzd5HxlGVwlZD9DEQ=;
        b=IFn52ymRAhX1q/mO+/E2tv59lCgUCkd9VJo2+b78ulHv2/SEalh+DawXs3dMhJOfzF
         kVQxrJBxsFXCcGMDlEFbZWTU8g2WEx2+XCb/0MvJKDT10aoWY7DkYAt66gFQc+pJRZFJ
         KIq6+alc7FwCh3R4/IHgycDFP1lt2q1G70MwUUVySaM4lBqCnH8DNwOIrx7O8mWebPrm
         RjXFgeResEnJgYl5i9hHy0Vf8M0CFvQxlJMgLgXga+5Tyu8zFRIr8fVmDandWCj1kMNR
         2z1DK4akC5AEyDx4R7W91JgWw3xi7sXmsZJbhs8PGwyR2SrPsvUzysSj3RBHeTbNVNFT
         nCvw==
X-Forwarded-Encrypted: i=1; AL+hErHX70wBkAlr4+nGrzarLafTQGvFR/SN87RJWa+Z9b4ZhshQUZGRmF5Lj8l8ftGUAZh8gKT9drgVH18p78DIgA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/JnundB43rPY8lIR0hYupuqBvujPL8+aHPl+QzqGJfV26sIR89
	BX3TVJv7B/arHuNp6vh0GejKvUAdwK8Nhgf9HpEOEPsI5oHEamIRTAyD3RF0LRat2iedBM07WD/
	nGrDE1DAhsiZ3VGZ88EuoieUTeJcBtS8onbiI
X-Gm-Gg: AYBFou1fsRlBMAt3XBth5P2uklqmKDd4e3PNoOH80jLx9AP2byB3aJ6+Pk0NLgBzE9Q
	pQa5MsUqSM7L8RdUuQF+keubpWwLNCO/oeBXX14QyknsIbJZFynFCc8gwyDp+rgZD9TuyjmMuEl
	37Cz8QnVxZrP1v1A9dOposV19odZ+oNfH/zCVjaqSUgDlyTTmEvVaXXds43Is9nv5Tu2XdP1+7z
	SqV/7DXrTc7mdKVu83FfMx3hYBSiygMvr/dKb8uoSvGsApWm+91oCi5Zu2dkrXkl1DmlZKaESWy
	7FmVLRSpVXzf0T4do9gSGUMOrQGHKLuSWgB7+7IhMKN+UIqD7PNlGxIHEiD1Xu1aVKXKmEPl6bp
	zufvVrD+Rh8NNGxmbwpGJRYvDYIt1eOBislk=
X-Received: by 2002:a17:906:c104:b0:c4d:28ba:f221 with SMTP id
 a640c23a62f3a-c510e5903demr427620066b.42.1795068298655; Wed, 18 Nov 2026
 22:04:58 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261119-b4-rockchip-pcie-hib-v1-1-05df24cc77e6@iav.lv>
In-Reply-To: <20261119-b4-rockchip-pcie-hib-v1-1-05df24cc77e6@iav.lv>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 19 Nov 2026 11:34:40 +0530
X-Gm-Features: AclHuK-yj0qp-k9YYA6fs3KiQog3XEeJOKWZ7G7ZFB-glkWEk6yaKExA1sPwYKk
Message-ID: <CANAwSgRaHubdh8o5Zd3k5Sa_jf5fWuEuCXqbQu7gGL71MwC+8g@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip-host: Support hibernation with endpoints in D0
To: iav@iav.lv
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_220501_532989_37F77397 
X-CRM114-Status: GOOD (  33.77  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Igor,


On Thu, 19 Nov 2026 at 06:42, Igor Velkov via B4 Relay
<devnull+iav.iav.lv@kernel.org> wrote:
>
> From: Igor Velkov <iav@iav.lv>
>
> The driver runs its suspend callback on every system sleep transition,
> including hibernation freeze and the quiesce step of the kernel that
> loads the image. The PCI core leaves the endpoints in D0 there, the
> link does not enter L2 after PME_Turn_Off, and hibernation aborts:
>
>   rockchip-pcie f8000000.pcie: PCIe link enter L2 timeout!
>   rockchip-pcie f8000000.pcie: PM: failed to freeze noirq: error -110
>
> Keep the link up across freeze and thaw. On restore, power the port
> down and bring it up as on resume, because the kernel that loaded the
> image may have left it in any state. The port may already be down if
> poweroff_noirq ran, so track that state.
>
It looks like we aren't disabling all the PCIe regulators (0.9V, 1.8V,
3.3V, and 12V)
during suspend and re-enabling them during resume.
Shouldn't we power down all of them on suspend and bring them back up on resume?

Thanks
-Anand

> Signed-off-by: Igor Velkov <iav@iav.lv>
> ---
> Tested on v7.4-rc3 with this patch, ROCK Pi 4A with a WD SN770 NVMe:
> 5 of 5 hibernation cycles restored, the NVMe readable after each.
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 33 +++++++++++++++++++++++++++--
>  drivers/pci/controller/pcie-rockchip.h      |  1 +
>  2 files changed, 32 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 1e1556e436b8..df4b9b3ec031 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -863,6 +863,8 @@ static int rockchip_pcie_suspend_noirq(struct device *dev)
>
>         regulator_disable(rockchip->vpcie0v9);
>
> +       rockchip->powered_down = true;
> +
>         return ret;
>  }
>
> @@ -893,6 +895,8 @@ static int rockchip_pcie_resume_noirq(struct device *dev)
>         rockchip_pcie_update_txcredit_mui(rockchip);
>         rockchip_pcie_enable_interrupts(rockchip);
>
> +       rockchip->powered_down = false;
> +
>         return 0;
>
>  err_err_deinit_port:
> @@ -904,6 +908,25 @@ static int rockchip_pcie_resume_noirq(struct device *dev)
>         return err;
>  }
>
> +static int rockchip_pcie_restore_noirq(struct device *dev)
> +{
> +       struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
> +
> +       /*
> +        * The boot kernel may have left the port in any state, while the image
> +        * holds the enable counts of a running port. Power it down so that
> +        * resume brings it up from scratch.
> +        */
> +       if (!rockchip->powered_down) {
> +               rockchip_pcie_deinit_phys(rockchip);
> +               rockchip_pcie_disable_clocks(rockchip);
> +               regulator_disable(rockchip->vpcie0v9);
> +               rockchip->powered_down = true;
> +       }
> +
> +       return rockchip_pcie_resume_noirq(dev);
> +}
> +
>  static int rockchip_pcie_probe(struct platform_device *pdev)
>  {
>         struct rockchip_pcie *rockchip;
> @@ -1011,9 +1034,15 @@ static void rockchip_pcie_remove(struct platform_device *pdev)
>         regulator_disable(rockchip->vpcie0v9);
>  }
>
> +/*
> + * Freeze leaves the endpoints in D0 and the link does not reach L2 then,
> + * so keep the link up across freeze and thaw; restore re-inits the port.
> + */
>  static const struct dev_pm_ops rockchip_pcie_pm_ops = {
> -       NOIRQ_SYSTEM_SLEEP_PM_OPS(rockchip_pcie_suspend_noirq,
> -                                 rockchip_pcie_resume_noirq)
> +       .suspend_noirq = pm_sleep_ptr(rockchip_pcie_suspend_noirq),
> +       .resume_noirq = pm_sleep_ptr(rockchip_pcie_resume_noirq),
> +       .poweroff_noirq = pm_sleep_ptr(rockchip_pcie_suspend_noirq),
> +       .restore_noirq = pm_sleep_ptr(rockchip_pcie_restore_noirq),
>  };
>
>  static const struct of_device_id rockchip_pcie_of_match[] = {
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index b5da15601b58..51877678d3df 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -324,6 +324,7 @@ struct rockchip_pcie {
>         void    __iomem *msg_region;
>         phys_addr_t msg_bus_addr;
>         bool is_rc;
> +       bool powered_down;
>         struct resource *mem_res;
>  };
>
>
> ---
> base-commit: 35f800669ce835aa77364a2ab5b61be19b778d3c
> change-id: 20261119-b4-rockchip-pcie-hib-004e1adc4042
>
> Best regards,
> --
> Igor Velkov <iav@iav.lv>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
