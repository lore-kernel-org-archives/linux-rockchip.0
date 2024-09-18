Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF62DCCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 08:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q57wd4Fi5BmISNqMzUi1yTlj46qdLXV4GN8vjSdtxsQ=; b=U0IQPFFtCwJRn8
	RAGLLXDc6d7vBzKk1g3DLxCqtcXJSHrsTgUMoa+p18pYqie3jGRzXg6CBBTQnsYg+hpjJuqm61wa8
	eN9hXJc9U0qjQwXCzksIpyg/eD9V02daaVkjFUeXc/LzI2gR3Wulm2WpxeeJQrg0EeFTUntSRY1cH
	pHa5318FQR7PscGXkq7HvmLBDlMdxnHwQM3Iqf5OwQpiAFC4tCZXh4RwSZ0fD96zWCD/Sfwj6QnhC
	uqZk3p0q6WvSQboxGKvQvM+RnZBDujvtWJ05nY6Al5tpfyqPrxOeIjUc/g4xLe12XAZA2DYbPcPIF
	39hSBx5LX574SKMlg8RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpyN-00000007nZH-2ZuV;
	Wed, 18 Sep 2024 08:23:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpwU-00000007n4w-3Muf;
	Wed, 18 Sep 2024 08:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=v9Hw/owoAXL6eCc51YZo8Aacprq6fodHMr7qvhkKcVw=; b=DDbz/JeAYqAAib/syOV1e3Goyr
	BoxMx/c96JUViAvFOxGVf9Nxlwh3DZQDNh7KGVT5iEXvbNpBaR166+ZY/NC0XFoUzvmZiOAX/ci8F
	iHza9slGdHsfPZkOOHfSdox77Gomb9xF8ANRRls+2A2uevdH5FgZkvZcZJrGttFKnzgT9ORY9D0hA
	GJiKcEFK1NIFZl0q2RX43HFQfZgcXnlmyDU+eKROg3u+pRRh50bkrTEeyjWDGEB9/xEp5ulNQ6R0N
	xncbAcGe8lr2S7Bk1OTutHv2Z1XR50XfeuS0VTO2O2ajNxAFQS9fMOScCFFA/5MBSv/D/mQY/n6O2
	wvBAxf/A==;
Received: from [83.68.141.146] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqpwE-0003RF-8A; Wed, 18 Sep 2024 10:21:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
 robh@kernel.org, bhelgaas@google.com, cassel@kernel.org, ukleinek@debian.org,
 dlemoal@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 Chen Ni <nichen@iscas.ac.cn>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chen Ni <nichen@iscas.ac.cn>
Subject: Re: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
Date: Wed, 18 Sep 2024 10:21:25 +0200
Message-ID: <1945968.taCxCBeP46@phil>
In-Reply-To: <20240918074401.2221146-1-nichen@iscas.ac.cn>
References: <20240918074401.2221146-1-nichen@iscas.ac.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_012142_893543_F8D1DCB6 
X-CRM114-Status: GOOD (  11.45  )
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

Am Mittwoch, 18. September 2024, 09:44:01 CEST schrieb Chen Ni:
> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from platform_get_irq_byname()
> function as it is going to display an appropriate error message in case
> of a failure.
> 
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
