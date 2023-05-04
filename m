Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C881C77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 12:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydnlUFJ2f3di9WsSjCQI4HijR2B4r/c4BaWnJvfSQeM=; b=xhUDAz8JM12WgX
	20dxuPST1MBi2CqtTbdkirYD54SN5anda1v63mGfHxusiWyd3xaJZqp4dUpJcV3boeQs+P3GXlrsc
	XVNpApW7aGYww2wLq39JAsaEydkxc9RtGeXHYiz6aYfOdI25U3Mh6L390Q6giiPe0l0/kZdU1Z7Xh
	Z0DWqJR0TqsztMrESwNaK2t+Lr7W2fsM5RnKsKNkJTTet0vSmJ0rGQr+QGlKxgY2W9ATxGd5qSvYO
	KuSyAgjtlKE/COlE/VAUoLQUSk9tXrCpsfVS0Xeg0NmF3DXlfawbkpKNYeRpYdvVqJ/4mg+szssmy
	/yj+EE90J779kvEVhHrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puYC3-007sBU-0D;
	Thu, 04 May 2023 12:36:19 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puYBy-007s7n-2G;
	Thu, 04 May 2023 12:36:16 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 344CDEqL015451;
	Thu, 4 May 2023 12:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=q2PvZHUwer6rMG6toGyLr95dqW+DnVRKmiyTx3c68+Y=;
 b=sxfTjOdlX3wqQ9krPqdrVomkr6khN2uJ/s2eLCiVkCeZVQJhqQMrphYh1ZZQpvIZZ/hC
 vw/zgFaEO0xYyfMl0nGJhtYQcIHkkBe+j1ZMiRMBlisAUE30nllji+LE+XrvZAL17FnH
 z8X1Z99aZ9/FqJQkob3dWlAbCBMdp/WKI+DVRQJKGHuh1D36Bv8UaL8v5J1yuPfmGe2b
 ilo1zSuaOtt4/iTJrGiuLJ6j0Ju+KKpRb9aAuNW06132hi9ctpHxORoz9sdA2zV6Lb9h
 wCy4Ou4pzHQ5z3kN5v3k/8RPQbRwg/FLYgh0qGLxMQkdzk51UNlpu/iO+TOwzXZOx4IX RQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qcch2gqvj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 12:35:45 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 344CE1rN017491;
	Thu, 4 May 2023 12:35:44 GMT
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qcch2gqt5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 12:35:43 +0000
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 344BUdx1014482;
	Thu, 4 May 2023 12:35:41 GMT
Received: from smtprelay04.fra02v.mail.ibm.com ([9.218.2.228])
	by ppma04fra.de.ibm.com (PPS) with ESMTPS id 3q8tv6jbw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 12:35:41 +0000
Received: from smtpav02.fra02v.mail.ibm.com (smtpav02.fra02v.mail.ibm.com [10.20.54.101])
	by smtprelay04.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 344CZbr724183136
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 4 May 2023 12:35:37 GMT
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BB9412004B;
	Thu,  4 May 2023 12:35:37 +0000 (GMT)
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7CD912004E;
	Thu,  4 May 2023 12:35:35 +0000 (GMT)
Received: from [9.171.37.17] (unknown [9.171.37.17])
	by smtpav02.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  4 May 2023 12:35:35 +0000 (GMT)
Message-ID: <c643db828f441009a5281127122a967c7fcc7149.camel@linux.ibm.com>
Subject: Re: [PATCH 18/20] iommu: Add ops->domain_alloc_paging()
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Robin Murphy <robin.murphy@arm.com>
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
        Samuel Holland <samuel@sholland.org>,
        Thierry
 Reding <thierry.reding@gmail.com>,
        Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
        Will Deacon <will@kernel.org>, Yong Wu
 <yong.wu@mediatek.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Lu Baolu
 <baolu.lu@linux.intel.com>,
        Kevin Tian <kevin.tian@intel.com>, Nicolin
 Chen <nicolinc@nvidia.com>,
        Steven Price <steven.price@arm.com>
Date: Thu, 04 May 2023 14:35:35 +0200
In-Reply-To: <ZFK3dfb4bFiJjw9M@nvidia.com>
References: <18-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
	 <fa8c5e95-b8c8-f4c0-63a0-d3176718d304@arm.com>
	 <ZFK3dfb4bFiJjw9M@nvidia.com>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: RHz75bdl2Pt54-aJ4GvL9Jz7zu-lykuH
X-Proofpoint-ORIG-GUID: puUOpJOkp33KbhZgqlXMSTptSoQn4Vcg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_08,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 mlxscore=0 malwarescore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305040103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_053614_879114_8B4CCE44 
X-CRM114-Status: GOOD (  20.74  )
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

On Wed, 2023-05-03 at 16:35 -0300, Jason Gunthorpe wrote:
> On Wed, May 03, 2023 at 06:17:58PM +0100, Robin Murphy wrote:
> > On 2023-05-01 19:03, Jason Gunthorpe wrote:
> > > 
---8<---
> 
> > > @@ -1940,7 +1944,11 @@ static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
> > >   	if (type == IOMMU_DOMAIN_IDENTITY && bus->iommu_ops->identity_domain)
> > >   		return bus->iommu_ops->identity_domain;
> > > -	domain = bus->iommu_ops->domain_alloc(type);
> > > +	if ((type == IOMMU_DOMAIN_UNMANAGED || type == IOMMU_DOMAIN_DMA) &&
> > 
> > Logically, "type & __IOMMU_DOMAIN_PAGING", otherwise we're already missing
> > IOMMU_DOMAIN_DMA_FQ. Except maybe that's deliberate? 
> 
> It is deliberate for now, if it included FQ it would cause a bunch of
> ARM64 drivers to switch to lazy mode. I'll add a comment.
> 
> I have drafted a followup series that removes all the
> DMA/DMA_FQ/UNMANAGED checks from the remaining 6 drivers. I did this
> by adding an op flag 'prefer to use FQ' and made the core code drive
> the FQ decision from ops.

Ah that sounds like it could fit very well with s390's need for an even
lazier flush mode to handle the virtualized IOMMU with slow IOTLB flush
case aka _SQ / single flush queue mode. When you have anything ready
give me a ping and I can rework my DMA conversion on top of this.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
