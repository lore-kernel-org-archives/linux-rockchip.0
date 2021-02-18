Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 170C8C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:56:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC87364E79
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:56:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC87364E79
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JNd2Fp1XVrADyILY1CiCreCCVGxfuf1WUBt0oydMOZ4=; b=GzdBnxLB4qvFVZvMkwRuJPx/i
	29AvuVGNcvywuYeLQKMzwXXD0mFnkUrT661GIikBaGJNiM3D4nps0pIOy1N7b6oekWWa84f+qfztA
	JX2LnNAvNpjOU/QvLCxYV6M3+WHgr3vArJGEomxyxQ3qWy6EI/PuQciAskeBmJhdB69n/o2Nlz2d4
	qDEICt8N6k+V2dXoOkV8Ay9vTYyNdskt0Nhe9QW9JfCt1WLo+Ha+Pg3SdJTLfCxUFzlYHhbr5O5bM
	pASoJwb7kaytBjKw5VR9IVSrovz/KkuRu1dR2qgCcjDtq5XSppkAAjSZYYTLyf92I8eiEM1s1NmGl
	Onr4GcPaA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCgyr-0006De-U7; Thu, 18 Feb 2021 10:56:22 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCgyq-0006Cq-AQ; Thu, 18 Feb 2021 10:56:21 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAsIfn070409;
 Thu, 18 Feb 2021 10:56:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UtfpFAuXXKx50YaPgIVvUWoFjdBHQvgA3bRXqMoF/i8=;
 b=Yt6TcKZ5GmL+0F3NC73R0zDDJdLSDRSQFcLBgJ2A1Mp8b7xRvooO91YX7kkrnoZL00yt
 OdH3JaC0Kab1YAPzgMLIHZNEtPnatRRBI+RgJJhCJxruG4LrqsZXyvJciT9DbJFZNMJp
 a+FCJIEZAM9cIgrb7rC7O2LVm9rm2yV1SXP50QdWReIM0++dlqTXdaAhvJJJAeH0O41E
 g98F+piRRZR9/Zp+DgBreCuFPNMJXd/UfSCmfWAemtyor92TlPv0vzSVEY4mBL2/gZKH
 zT4fNFM7VligXujLkft5ycywZZ1HQpL1aeReDxkCuVADodQLP6O4UbLyQ0H0GlyJno+H /A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 36pd9ad16a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:56:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAkQ8Z188616;
 Thu, 18 Feb 2021 10:56:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbqm8qs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:56:08 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11IAu5J1016546;
 Thu, 18 Feb 2021 10:56:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 02:56:05 -0800
Date: Thu, 18 Feb 2021 13:55:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 07/18] media: hantro: Add a field to distinguish the
 hardware versions
Message-ID: <20210218105551.GF2087@kadam>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-8-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-8-benjamin.gaignard@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180095
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 impostorscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_055620_492846_8A785F6F 
X-CRM114-Status: GOOD (  25.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, kernel@pengutronix.de, hverkuil-cisco@xs4all.nl,
 shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 17, 2021 at 09:02:55AM +0100, Benjamin Gaignard wrote:
> Decoders hardware blocks could exist in multiple versions: add
> a field to distinguish them at runtime.
> Keep the default behavoir to be G1 hardware.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro.h     | 5 +++++
>  drivers/staging/media/hantro/hantro_drv.c | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index bde65231f22f..2a566dfc2fe3 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -36,6 +36,9 @@ struct hantro_codec_ops;
>  #define HANTRO_H264_DECODER	BIT(18)
>  #define HANTRO_DECODERS		0xffff0000
>  
> +#define HANTRO_G1_REV		0x6731
> +#define HANTRO_G2_REV		0x6732
> +
>  /**
>   * struct hantro_irq - irq handler and name
>   *
> @@ -170,6 +173,7 @@ hantro_vdev_to_func(struct video_device *vdev)
>   * @enc_base:		Mapped address of VPU encoder register for convenience.
>   * @dec_base:		Mapped address of VPU decoder register for convenience.
>   * @ctrl_base:		Mapped address of VPU control block.
> + * @core_hw_dec_rev	Runtime detected HW decoder core revision
>   * @vpu_mutex:		Mutex to synchronize V4L2 calls.
>   * @irqlock:		Spinlock to synchronize access to data structures
>   *			shared with interrupt handlers.
> @@ -189,6 +193,7 @@ struct hantro_dev {
>  	void __iomem *enc_base;
>  	void __iomem *dec_base;
>  	void __iomem *ctrl_base;
> +	u32 core_hw_dec_rev;
>  
>  	struct mutex vpu_mutex;	/* video_device lock */
>  	spinlock_t irqlock;
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 0570047c7fa0..e1443c394f62 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -840,6 +840,8 @@ static int hantro_probe(struct platform_device *pdev)
>  	}
>  	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
>  	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
> +	/* by default decoder is G1 */
> +	vpu->core_hw_dec_rev = HANTRO_G1_REV;
>  

This is a write only variable.  :P  Fold it in with the patch that uses
it.

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
