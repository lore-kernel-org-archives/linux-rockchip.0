Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE520CA1010
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 02:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lf8c2XeUpKqDgZR6c9rTri01UA9L2mIGzl9mMZp21kw=; b=nqIw5cjgtSznQ8
	6VUScbwvi16u70TtFvjwzQ/YMIiCXUO1mJ9cCW2RV6Cl8QZvWmT6jQbe/0c0CTpZb9SdendtI6C3v
	9fgt9JkDHXcQpRNpi21tvkypa5LUbEXgADj880itKkOczhh3dpD52jGX5Y30kdR9qSvfahZJKyobK
	H/LKcjb/PGXu6ScDqZKpyqV7+b/i9a2v+4mt/YfruRMxiuh7MjQHyUKztoNGdj9JW9+ruCRo7eJrl
	bnd+bGOPcpRi4ZEaeF0OKaVOcGWX0cq1TgKgFvXJnT5m1l0U1UB4/BJeNGWdY/dLnHW0LfI5T2WSQ
	LnRt1ONxj4WCJxvYbz8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utzam-00000008Mbx-1KHN;
	Thu, 04 Sep 2025 02:20:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utzY0-00000008LUo-0qWr
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 02:18:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841RPKT003955
	for <linux-rockchip@lists.infradead.org>; Thu, 4 Sep 2025 02:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qkFwydJsxqdgKqOJsAZ1HDk8X8ftVkpre+cMSSd/UDM=; b=HYWdy/0/zGXNvniC
	YSpkv3GBj1r6CrCdX69ovIPoytEWNU9RERQfYcx2oTjSxWrQ7mq8T1eTnMmsmgWZ
	VTYYhktA8UPp+u2F5OfPKogforhOErJ0WP0PM5XXOU6igHHSexuX5OiEZzwPt8mg
	jS2IflRnkmp6N7BXM0Tz4p+1sf7wU6L0RuJz3V4XMNZGXSeL59g0a8Tf89XjNSBA
	0hhw0v0Ls5ul5tK4y06uwohAFQIsed+krasNFCaJobCHRcOX3V9j2Anc77/MZt/0
	kwUL5ecFYDDWunFW/R4ZbPdl1Ra8lyt/xdj38Aa1MHNhdjDqnPwOuA3Lxa/dDPNl
	pzvbvw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8wr7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 02:17:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-728f554de59so5093306d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Sep 2025 19:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756952278; x=1757557078;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkFwydJsxqdgKqOJsAZ1HDk8X8ftVkpre+cMSSd/UDM=;
        b=jnjR8BXweCUCl9RDnqLvJU7B5KmrOtyTVI2Iaaq3jtrbrQTYLLLB8BZdjskLLKoPIL
         hF4njQNy6ud4ASknmuwo/0zk+cH4CQm7VbkaVTqQi45vWzxyBGQvKRSI6+n8viIpKu7y
         NtztUT6AWTPy/g+ynndEopODXy/0YbZGZJUQBqEgy/oJNR0Z6MGd7yY3HlVWBB828Grg
         KVA5coqSZuhXxgw76Ybi0aTkZrCZg9gs5DbzzPz5zwjejL6kf7UbZevLYkvSf1AEA4ci
         T66kZYfIaX/0OELqRCjcbXTxD/ykQnxzEnUJ39mrVjheiGirJg6frCYpZGChX52rloaS
         6wbw==
X-Forwarded-Encrypted: i=1; AJvYcCUNnwR9cmwvxHxK6l4XaP/ALClZ5p7OBjke+2hKH8sfWqABCaYRS7wyzizwfNQ7b2RbWDAfxB4bhNgZsfYniA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJozsVV+mGQNJ7vGZkNK0TgiLcytPYX7SOCnqDmnaP1AVPHGn1
	V/DD7QOrM2fSdvHj0/CZpl8UoI8wWeQhYxKxw8B2s1LWkZz+3Ku3kkjE6hNUHy3CxEOsHUh3S6p
	o3+Fs3INp9nv5EVUcLWIKCgdqdHoOeCH3UyNT2KiR3ZdGYEaacJF+s8z/xv/E6jSRhiyROz3Njv
	c=
X-Gm-Gg: ASbGncvj9OM1OxKnc9VxZxPcyj/RvYXxOXxG5KORqckNf+etwSt/YNRWM729Mm3Ztke
	O5yBdxj1sLxZbdMzEwVBtlv3jNbWS9Q5xrUIxpBr6ZrwDgwVynnyDcBXam7/5i/fMSPdL0C6xac
	WW/G8zjfkCa/6iehzjvvgWu34SHSEp8bdL8kMVeWTiece4nUZFWQKND3QC8dMI1AV9PMjsnqG1i
	hE9YRux465vx/Bk6ewE18jM8LkjUXOlwC2B1sJ/EFCyKijR1dU0zBl7Fex2omv0JlNdZ7o0rghU
	Htc6UxH3hTnWOV6oLmVqEpsSrT2XccuvN6dH4+R6rC+uRBnn0AxGg/qrrdN+xrfSDGa2uxAOWLh
	keMbcosVCOF98fOosxoTWS6UyXn3ouM405QUAtlqvBMFOoJyIo5lC
X-Received: by 2002:a05:6214:501d:b0:712:e30b:ef1d with SMTP id 6a1803df08f44-712e30bf1f3mr189032636d6.63.1756952278132;
        Wed, 03 Sep 2025 19:17:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpnx/oWiqnFeeBH9c95exPgNTFpxW3/4KJo+Lqf24gUbaClGKKsJlqB65JLkcbt0YEKckERw==
X-Received: by 2002:a05:6214:501d:b0:712:e30b:ef1d with SMTP id 6a1803df08f44-712e30bf1f3mr189032376d6.63.1756952277581;
        Wed, 03 Sep 2025 19:17:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab928f3sm863017e87.39.2025.09.03.19.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 19:17:56 -0700 (PDT)
Date: Thu, 4 Sep 2025 05:17:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yury Norov <yury.norov@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
        mripard@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <irvff5zmeqyy7yn3idc5rr2ekx5gmpcib45rrqk2vhkt33mdy4@q346i2jkehtt>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <5255838.1BCLMh4Saa@phil>
 <4ox7yh3i47odinoaalzjz7d3gvx36bxbaspo6qfvvvl3jqhdiv@24ownjco3ud2>
 <aLismmDJfusG0x0Z@yury>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aLismmDJfusG0x0Z@yury>
X-Proofpoint-ORIG-GUID: -pJniPE7Cort9CD2dB5IgkLwI8XrgQhZ
X-Proofpoint-GUID: -pJniPE7Cort9CD2dB5IgkLwI8XrgQhZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX/rVU39yIWCWe
 hufMG2ZheiRiE5khrArE1N7hO67pOjmuJr/4+1eZcQO/dsQO/LHxyHnZT3pjmSkunlO+cGG37Jw
 Vv5desnDAEkLVzxIZ+6hicRL8p1MJjThQY2FTDq7iglluTv2UCnykFm8HkXlE0sFEIxM5ve3i0+
 5JHCDy1GRR1RR8jgzBP/O6jDKUQRroathR20cMfrq7Zs3Lg9yBOmmGpwiIZCIdfHwHTNShima8E
 HduP1LJWvBTmYQF2cTiJ092YX65Fgkh6dOjZHLeFeG2J9SsqWKWWrxt9U5HsHcosQ1sMZ56lh4A
 roP+CMNngCFk5xk8uz7YL4h6NV+6PW8N7wg4JvDYX6gtNoMJBSqwt60BZZPPAFZ3kjh99+tRuKH
 hXqy5lDM
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b8f6d7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=Fob2wsIVxNtBE8oepsMA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_191800_350154_E8495095 
X-CRM114-Status: GOOD (  31.50  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 03, 2025 at 05:01:14PM -0400, Yury Norov wrote:
> On Wed, Sep 03, 2025 at 03:30:47PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 01:59:51PM +0200, Heiko Stuebner wrote:
> > > Hi Andy,
> > > =

> > > Am Mittwoch, 3. September 2025, 13:07:38 Mitteleurop=E4ische Sommerze=
it schrieb Andy Yan:
> > > > From: Andy Yan <andy.yan@rock-chips.com>
> > > > =

> > > > Convert it to drm bridge driver, it will be convenient for us to
> > > > migrate the connector part to the display driver later.
> > > > =

> > > > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > > =

> > > more like a general remark, this essentially conflicts with the
> > > big hiword-cleanup [0] that was merged today, as the inno-hdmi driver
> > > "lost" its separate HIWORD_UPDATE macro in favor a nicer generic one.
> > > =

> > > I'm not sure what the best way to proceed is, apart from waiting for
> > > 6.18-rc1.
> > =

> > I'd say, the correct way to handle would have been to:
> > - merge only FIELD_PREP_WM16 addition into bitmap-for-next using
> >   immutable tag
> > - merge the tag + all other patches into subsystem trees. Otherwise
> >   that series can cause a lot of conflicts with all affected subsystems.
> > =

> > Yury, would it be possible to implement this plan instead of pulling
> > everything through your tree?
> =

> Yeah, this is 100% technically correct way of moving things.
> =

> The problem is that driver maintainers are usually not quick taking
> this type of changes. In my experience, if we merge #1 only, we'll
> end up with just another flavor of HIWORD_UPDATE(), maybe adopted
> by a couple of drivers.
> =

> This is exactly opposite to the original goal of the series: nice and
> almost complete consolidation of scattered HIWORD_UPDATE() versions.
> =

> So far, there's the only conflict with the others, and Andy said he's
> OK to hold his series.
> =

> I would prefer to have all those patches in bitmap-for-next for a while.
> If there will be more conflicts, then yeah, I'll follow your route.
> Otherwise, let's keep things as they are, and encourage developers to
> test their patches against linux-next, as they normally should.

Ack, thanks for the explanation.

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
