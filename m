Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD41C3ABAC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 16:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0Pn/7IabK+eo9sgicUfLoXUoT3jQkNRRYeGz5152ds=; b=onH0bHsQOR1rLp
	CbXhweQPOoRQ3izS9cV+GAiOo2SxGTTk+xGMWvrrlEa+rH0Ckioq4h64RPA20wo9GvrpK7iuREC/J
	hf1fiTO7WdFr2KwwXBWlGKurB97qdNIW4tSYdSue1UeQZrTxwUHqwLdRTvY0YgaxQbv8G001iEJaJ
	l0HArP0zoRKb659DBufY/CbjzToWSFyef43roEzLpYkykixC6IV+w0Vd6uJ8KViCJ1cVYK3MDaVV6
	z54tUAeLNUsG86M0S8j7AZGjR1PcKYZjsqwvbsX/6ydQ1VUgf4x8eWMANy1qX03HXW5MiM2E7d/Mt
	0HTDzIMkriwAQI2j0HGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBc4r-00000005do9-1uKY;
	Sun, 04 May 2025 16:20:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBc1M-00000005dHN-0kWw
	for linux-rockchip@bombadil.infradead.org;
	Sun, 04 May 2025 16:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2EVC3je5HAhssIAnNfZ+XqOXLnIfrV/oZD5AQQ6xe/s=; b=m9cIuWBJ4qB5Ih8POmpzJqMrX4
	4mtl39NVNpSnePfFR1n9XAYHi1aNJ4N+CXnAJjNCEMAWnqeIObPVz+psv+3DNE/kjNRoEX2oWbQ/V
	9CK/g/FdDO/tVh8jWLBWFNPZfixWaQoD70QexX+AQxzFIDn+Y2cl7mxxhf3ZGobdc1vaLxHVnzBis
	HI/fiS/1wg4S/InKyPS29I12a7x3kPNLrzObJmS6pBtYA8dFQR1TeDzW6mPU/m0FtcnEc/DYqyGk4
	y4L+JdyduMCW4msHOMccCC4aOhLEpdzLGY1ljsoKig0n9/DL7RVtmIDtHYrdIinWRxoBznyrMHq5i
	bllObR+Q==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uBc1F-0000000FNje-38PX
	for linux-rockchip@lists.infradead.org;
	Sun, 04 May 2025 16:16:50 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5449CinX017066
	for <linux-rockchip@lists.infradead.org>; Sun, 4 May 2025 16:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2EVC3je5HAhssIAnNfZ+XqOXLnIfrV/oZD5AQQ6xe/s=; b=jjIO5RsqjwOL8NcZ
	Qifcx92SBgVIeZQ9Nc4Pg+OJtmB3KHtixWVrzFuxZaztvsMUbkQ/GS+L6ATcygWS
	PYEgNHlYxtF1EcMtZZmS1rQ0GvxQ6yKUOAKsmSKqvZpXEjAwaGSgCP43qkU40OrF
	xORvhu2q9vZsoXxbpUqtC8HV7YkH3RkU0dawPX8ANytBXxaVbZpZL7/0NP8fnkRR
	LFAFhIzI3oElI+Ci8MBru8G/iCOOydwToIajdRl+I/Igiabr6clEnQdWYRp7kBJJ
	dyFmOjv0ldDhNfzX/xJ6NuRirda0kuANJIEKA7X28iD1BJpTc1+E3QnFoRO/nImK
	VfQCHw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dd3n21uq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 04 May 2025 16:16:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5bb68b386so499014585a.3
        for <linux-rockchip@lists.infradead.org>; Sun, 04 May 2025 09:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375398; x=1746980198;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EVC3je5HAhssIAnNfZ+XqOXLnIfrV/oZD5AQQ6xe/s=;
        b=qZ1kqE27ssLdb4bLHwefq92FrvLnu1a75U5DIAa0rjbtOl/Ty9xFleyqfsCGAnfYb0
         y+gCDtaI+medyuM/SvaXvrc+YaF+iuGz5VvHcFRfXb45RzWKXduxUI5Ve3C0q3mXO/3M
         SGF3XcTiK4kG2jkEuvYMbzfNBbIPt40bUnqoOU/VuPHswUXM3B9OCAhg6FwtSUK3ZlIC
         Arnfq7j5fKEl7BzBxUUQNk+ZVK40mtui9wLkHSN5KEIa3Z9kd7x7kTuXkZfK/1FSJC71
         YDv6PJaUBAVOkRaNVJW9xhNYj111Xq+4l2IgRpAupYxoTIaVHN5FuUj7IMJY64/psPax
         YVRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbIRzDndOsZVlGMPBdnZm5WLAsrzP9pbBGZVpOwg8+Jht7QWT2rhTAA+LsRuzCC+BQ8HHe6X50z5cb8p2Wyw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqJZQ+3ERT8p4rePczTzAPj/gldy07v946YSPVKKhv4sJ/MGJB
	egP4FKdPlOgQCXTkJY2/k/tU2Q1xRs/U+SWtXAXG7f8Fv5ZfqVuGnCu22uSLwd2yJl1/ATosKVx
	IZalKroq5wxVcv3COdqKEGsaVbdpzbA+Sw3G4i8UlQ9UzBmGk9Dzc+zNEBy4JvIZook1Thrs=
X-Gm-Gg: ASbGncv0f1SHUn6iOrPYmeaMeSVujgxfY8r08r5iJh6N8e9f6U3UYy/trqYApZP1sQM
	28iCwLucpEq94hulSyN/clFL6LqDwBlT5QFahHeQqF7bWGXeAH9NWk9H6PoNVW3PJyGSopR28CG
	nv1wOlqKjJtMqMGTM3mKYlmzr+cD4KmU5/AfVRrd9przG02yuRY41PFF/R039aLu5Np1EEdo8Ry
	+V+mMctIml+BJlOcxXhAA+j6ZSGamt0tQynLjUUF+krcVkuFilmXzwYWbU93xhjsr6iXwpHJbg4
	mnzc6bkCgJnqVsCfilMIkVfp5n3/eH7Z6c1azVqYhUrRqRjEByE3UeJenzFTYm/XYOITA44DKFE
	=
X-Received: by 2002:a05:620a:371e:b0:7c3:d5a4:3df3 with SMTP id af79cd13be357-7cae3aa64e3mr573862485a.34.1746375398514;
        Sun, 04 May 2025 09:16:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiT08Hu2FwqUiAAbt7TpcAAf+6cb8td1czl+K5aq9kRsZS87wnWvgBk2BX0BgUjYPWiwBvqg==
X-Received: by 2002:a05:620a:371e:b0:7c3:d5a4:3df3 with SMTP id af79cd13be357-7cae3aa64e3mr573858585a.34.1746375398104;
        Sun, 04 May 2025 09:16:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94edff7sm1299766e87.137.2025.05.04.09.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:16:37 -0700 (PDT)
Date: Sun, 4 May 2025 19:16:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Andy Yan <andyshrk@163.com>, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, hjc@rock-chips.com, mripard@kernel.org,
        neil.armstrong@linaro.org, knaerzche@gmail.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 0/7] Convert inno hdmi to drm bridge
Message-ID: <nco27hnwykffzgirhocskltrkcds32tefkix23nfknf3e5m3zd@mkrrbw6kogsi>
References: <20250422070455.432666-1-andyshrk@163.com>
 <9503607.rMLUfLXkoz@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9503607.rMLUfLXkoz@diego>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfX/Qk01e3RiT5Y
 rdw3NakyAHcxHR802voL12AJsC9BOrttqQD+bmIcMPK6j/Zt61Ec4CROcdp5xf5v5fl7BdM6ff0
 S/YIpYnaO0/gV9s7P90T6tkBOhxZH46fUy9obWVXW/dfeYyTqCqFXldLxE+JZvrinYXdf8u0tz6
 MZeh/aZTGGmOZxRiWZnl8v84NqqL6Bl3ATtLrga1Hdx4cpiY9nXXEPreamCCXsr2i6rzxCbyEim
 1x9C78tJIGJsn6B1hikxFI6YVFsiIkOhDRmsTHPvbJPC4DjZpqnWeCXGQQaF2fvs8vhUw6xe4OK
 v7GKVgkViqHE/qMK4N38k4GUIyFEkKnjH+pCowZU9NSxzU5u5yNKZgyX2fBJcr/r+qCWHqIu8py
 B4dvRSE6CXzLi2nIJDMG6Sop08SXRIDYVwAGAEkg6pcr9s7DdRBR8uAQhicjB4sVsX4+CZCX
X-Proofpoint-GUID: I4qNQsqYBvLuNLv-6FK-sohkgNUmyYoq
X-Proofpoint-ORIG-GUID: I4qNQsqYBvLuNLv-6FK-sohkgNUmyYoq
X-Authority-Analysis: v=2.4 cv=UNDdHDfy c=1 sm=1 tr=0 ts=681792e7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=dt9VzEwgFbYA:10 a=s8YR1HE3AAAA:8 a=iQVnW9HZ8WsgGSc_yxwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 mlxscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_171647_351413_87B7E682 
X-CRM114-Status: GOOD (  28.04  )
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

On Sat, May 03, 2025 at 04:42:04PM +0200, Heiko St=FCbner wrote:
> Am Dienstag, 22. April 2025, 09:04:39 Mitteleurop=E4ische Sommerzeit schr=
ieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > =

> > When preparing to convert the current inno hdmi driver into a
> > bridge driver, I found that there are several issues currently
> > existing with it:
> > =

> > 1. When the system starts up, the first time it reads the EDID, it
> >    will fail. This is because RK3036 HDMI DDC bus requires it's PHY's
> >    reference clock to be enabled first before normal DDC communication
> >    can be carried out.
> > =

> > 2. The signal is unstable. When running the glmark2 test on the screen,
> >    there is a small probability of seeing some screen flickering.
> >    This is because The HSYNC/VSYNC polarity of rk3036 HDMI are controll=
ed
> >    by GRF. This part is missing in the current driver.
> > =

> > PATCH 1~6 are try to Fix Document in the dt-binding, then add the
> > missing part in driver and dts.
> > PATCH 7 converts the curren driver to drm bridge mode.
> =

> After resurrecting my rk3036-kylin which hasn't sucessfully booted in a
> while, I could veryify this series, so on a rk3036-kylin
> =

> Tested-by: Heiko Stuebner <heiko@sntech.de>
> =

> =

> I'll probably apply patches 1-4 to drm-misc later today, as that solely
> touches the Rockchip (and only rk3036-)side and patches 5+6 to the
> rockchip tree.
> =

> Patch 7 should probably get some attention by people more familiar with
> drm-bridges, so I'll let that sit for a bit longer.

I will take a look later, but on the first glance it looks like there
are too many things going on in that patch, including some unnecessary
fnction movements and define movements, etc. I would kindly ask to split
the non-functional refactorings and the functional ones (splitting to a
library, etc).

> =

> =

> Thanks a lot for working on all this
> Heiko
> =

> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
