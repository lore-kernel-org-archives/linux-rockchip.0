Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B59CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 09:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:To:
	Message-Id:Date:Mime-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GvpOiQPH8845+s63SlmcclR58K0axMlaPEaGC+hZD4=; b=OE7btCOoCY174D
	f/on8xjaIrUT0nS6CAWYJxDrfMre1Y305doxdYcioQZhZ/xuhMroR4rbJdBJUh38Ae94SLUwRXL3g
	XhXDY5CFVodbD4MlNm2QelL0ircCjAnUmUYh6vGmPpm7co7dsZpDN1w/cyCMj/NXV8T0qhixj6ku6
	b7dkiGegx4Pp7ujVFWKb7pHTcPDNDUx2hXOD1Wq3iFKOT6BqawTB6NDEsG74o5KcnBLkCQ+zzHfSC
	kIzQLgoasD05x1iwZ0FKPa9EhvVb0ZQCqXeaUBPqWvlfkouLU85kyWK+fOoc36VLJWfGFGySlITyl
	WvmVTgy1V3Jde6iOnORw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDedz-0000000FvhH-1GBM;
	Mon, 05 Oct 2026 09:05:59 +0000
Received: from out-161.mta0.migadu.com ([2001:41d0:1004:224b::a1] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDedt-0000000Fvgk-2rtl
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 09:05:55 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=KoFZEafNxf5g+ROjz45xDOkEXtfPFjDjTBfEVnRhnCU=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1791191149; v=1; x=1791795949;
 b=YI2tpVHpmVs17hw5SeJCnWj6sxt19BGc2xWe1CwjDQw9RNfycAMnIoOvgfpa43dGUWfXLjsO
 wwydsLYLox0OOkG9MCPuFIJ80l4F2ZXto9lEvs4IL0u+TSLR1dZLKqGpPgv2qwKHv+EymK8vpAH
 Tcc7Ida4UQUj2VIDFH4zKCrLR6I7Fus0eiivyZIVG/5kScF4azk4geHCpwU9H0nFXiYt+pVIEAv
 OjhTxgBbzSqD8w8i1F/crRCvPr6jWx6ktDttVG/LSSfudjIPTaihIUUv5vusuqC0QCDogPGaImq
 Jmj1ELSCpIEuy2SJ4R6/pIjb8/QqmZI0RN5z/n89izp6w==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 7d7e3a11bcad3a34;
	Mon, 05 Oct 2026 09:05:32 +0000
X-Mizu-Trace-ID: 7d7e3a11bcad3a34
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Mon, 05 Oct 2026 11:05:32 +0200
Message-Id: <DLWS9II64U19.2RE8CUG71USY4@cknow-tech.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] dma-buf: Make DMABUF_DEBUG default to y on DEBUG_KERNEL
 kernels
From: "Diederik de Haas" <diederik@cknow-tech.com>
X-Mailer: aerc 0.22.0-31-g5c1c510d2b65
References: <20260907020015.24719-1-kmehltretter@gmail.com>
 <DLR74W1U9YPC.375IK0HOYHDIG@cknow-tech.com>
In-Reply-To: <DLR74W1U9YPC.375IK0HOYHDIG@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_020554_189435_F908A355 
X-CRM114-Status: UNSURE (   9.97  )
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

On Mon Sep 28, 2026 at 9:28 PM CEST, Diederik de Haas wrote:
> On Mon Sep 7, 2026 at 4:00 AM CEST, Karl Mehltretter wrote:
>> Commit 646013f513f3 ("dma-buf: enable DMABUF_DEBUG by default on DEBUG
>> kernels") changed the default of DMABUF_DEBUG to "y if DEBUG", but no
>> Kconfig symbol DEBUG exists, so the option has had no default since.
>>
>> Use DEBUG_KERNEL, the Kconfig symbol for a debug kernel.
>
> I wondered why since 7.3-rc4 when playing videos I got a WHOLE lot of the
> following error messages, which weren't there with 7.3-rc3:
>
>   [drm:rockchip_gem_iommu_map [rockchipdrm]] *ERROR* failed to map buffer: size=0 request_size=3956736
>   [drm:rockchip_gem_prime_import_sg_table [rockchipdrm]] *ERROR* failed to import sg table: -12
>
> Both come from ``drivers/gpu/drm/rockchip/rockchip_drm_gem.c``.
>
> ...
>
> When I explicitly disable ``DMABUF_DEBUG``, I no longer see those errors.
>
> Whether that fixes or just hides a problem, I'll leave that for others to
> decide.

It seems it hides the problem. Follow up with more context/links:
https://lore.kernel.org/all/20261005064133.7305-1-kmehltretter@gmail.com/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
