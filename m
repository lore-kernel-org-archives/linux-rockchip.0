Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E87C77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 18:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbteRl26fnGa9ysD+ji1fxOVevEjuVZYozdXhIygi4s=; b=tgyKa0KsgJgYhL
	v1S9c82tKGzpqPgAKPXyuLDH0XyoV20pZwzJms9VAJ/mdrB8X/JfwKYMpJDsCCZ3EQXg4TFuET3u+
	J7TnYzrex+e7zA+y7W12e8O4zZXlzPmmROuiVgF2YuOBYT3opaqJoitxOw/fSDrt9GDZ4M8yQLA2W
	kar5xey9V+fm2ELy2+lGyt5iD1KbiEGiU8bxwpylbx5frn+s/1X/CcIZkdDNQpMCXKl3ebiR/MCCd
	EU3AqbBShQ6rqOE4fecFGDJ2Y4yj9cRzj7GXilnQd+9GGz1R2RGa2/rwe4LxoYL7IgbI0lvjfKu8T
	MqUuLzL6ky6ZfAvA5f9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptuYN-002LKs-26;
	Tue, 02 May 2023 18:16:43 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptuYH-002LJK-1t;
	Tue, 02 May 2023 18:16:41 +0000
Received: from pps.filterd (m0353723.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 342IEdEv012302;
	Tue, 2 May 2023 18:16:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=+n8liBN5L0dwaVKtdnjrH6nlYtbK4M0ezTsHBz+OcQw=;
 b=sn4AceGT3vDGiHGn22xFeXMbzYcsOPv9cXhDyTYrfiwFszyCB3H+AB8wQVpH485ZZ/Uj
 dJ2cvznYQ7mAdQCdz9fuR0ODuAdr2LWcbSv6EGUgiKX3FNMtg8vllKBBTPBeG+1dUkHz
 cP4HGKL5XB2JOyfZtaIn/+S1h4fgRJ7YdJy2hzV5PjFNYgNcYRgwKVf27tgVI+fdhRH9
 Ifqv4TWQEPfQq1DWsnQZ3ozYodu/xjf0Tymgasn4aIdQ3H+2nLMOkFtoO4bmDudVi+/0
 CFivFI+0Hf5eAfLPNvqgKj4nvGd4W+SxayXz7Bht2trqFeqehwoI+6Xj10/GLnaeSm+N qA== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb7mb01r7-17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 18:16:13 +0000
Received: from m0353723.ppops.net (m0353723.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 342I2dPJ019051;
	Tue, 2 May 2023 18:03:11 GMT
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb6qv1frk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 18:03:11 +0000
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34246qx7021338;
	Tue, 2 May 2023 18:02:41 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
	by ppma04ams.nl.ibm.com (PPS) with ESMTPS id 3q8tv6sr6y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 18:02:41 +0000
Received: from smtpav02.fra02v.mail.ibm.com (smtpav02.fra02v.mail.ibm.com [10.20.54.101])
	by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 342I2cI939715088
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 2 May 2023 18:02:38 GMT
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 12A6920043;
	Tue,  2 May 2023 18:02:38 +0000 (GMT)
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2341420040;
	Tue,  2 May 2023 18:02:36 +0000 (GMT)
Received: from [9.171.18.35] (unknown [9.171.18.35])
	by smtpav02.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  2 May 2023 18:02:36 +0000 (GMT)
Message-ID: <aec2895379f426ac7c01c6d5952666975b8e1710.camel@linux.ibm.com>
Subject: Re: [PATCH 20/20] iommu: Convert remaining simple drivers to
 domain_alloc_paging()
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Andy Gross <agross@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,
        Baolin Wang
 <baolin.wang@linux.alibaba.com>,
        Gerald Schaefer
 <gerald.schaefer@linux.ibm.com>,
        Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonathan
 Hunter <jonathanh@nvidia.com>,
        Joerg Roedel <joro@8bytes.org>,
        Konrad
 Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
        linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Matthew Rosato
 <mjrosato@linux.ibm.com>,
        Orson Zhai <orsonzhai@gmail.com>, Rob Clark
 <robdclark@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Samuel Holland
 <samuel@sholland.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krishna
 Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
        Will Deacon
 <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
        Chunyan Zhang
 <zhang.lyra@gmail.com>,
        Lu Baolu <baolu.lu@linux.intel.com>,
        Kevin Tian
 <kevin.tian@intel.com>, Nicolin Chen <nicolinc@nvidia.com>,
        Steven Price
 <steven.price@arm.com>
Date: Tue, 02 May 2023 20:02:35 +0200
In-Reply-To: <ZFErVOr8RDoeZ2tq@nvidia.com>
References: <20-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
	 <b9b6a50724b4f1ac2b98e518a8b9a820a912850f.camel@linux.ibm.com>
	 <ZFErVOr8RDoeZ2tq@nvidia.com>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: slkEV7990viVZeo3EoiAzvk_x4KeFq9l
X-Proofpoint-ORIG-GUID: cZ5QXiUnqxQL3lGAYvCQF1nCj-zW_0d9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_10,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 adultscore=0 spamscore=0 bulkscore=0 mlxscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=527 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305020156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_111637_767863_0FDE54B2 
X-CRM114-Status: GOOD (  22.35  )
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

On Tue, 2023-05-02 at 12:25 -0300, Jason Gunthorpe wrote:
> On Tue, May 02, 2023 at 04:52:32PM +0200, Niklas Schnelle wrote:
> > @@ -1947,7 +1948,7 @@ static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
> >         if ((type == IOMMU_DOMAIN_UNMANAGED || type == IOMMU_DOMAIN_DMA) &&
> >             bus->iommu_ops->domain_alloc_paging)
> >                 domain = bus->iommu_ops->domain_alloc_paging(dev);
> > -       else
> > +       else if (bus->iommu_ops->domain_alloc)
> >                 domain = bus->iommu_ops->domain_alloc(type);
> >         if (!domain)
> >                 return NULL;
> 
> Agh, yes, it should fail, this is right, I'll fold it in, thanks
> 
> > This then uses the fallback of an empty IOMMU_DOMAIN_UNMANAGED and I
> > get a working device in the guest. Also tried hot unplug where the
> > device is taken over by the host again.
> 
> Great, thanks, I'll add your tested-by for the s390 drivers.

Yes and with the above change feel free to add my for this patch and
see my other reply for the s390 specific change.

Acked-by: Niklas Schnelle <schnelle@linux.ibm.com> # s390

(I've recently been added as additional S390 IOMMU (PCI) maintainer)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
