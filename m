Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F44CC87FCF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 23:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UopYtAEBgzQqPNw91rocb63Dqq8BYVGSYysPJ4EBq1g=; b=gsWK4F3j2jO0rS
	HRcGvhbEAJ+9fdTaQF118qZpLfmBGXTig95rBLZjGYsUGw/2nliSO3gGhfsh7XKAr0DxFVPQkT0Cw
	Tkqp95CK+LGlflEhWjvAjpAXUR0ujWT1YGc/K1bfmGuc9PD4JdskB28d5BIICYmU+kDBLGOMbR7Hf
	0qwQsc+9geCMdE7ga/TBvQtwM6sz9GY30c7GS1sTh7vmT5jyGqCWoucoA6a/LUPqqChhwbRfWUrc5
	aWQIyrLNKBM9tfIgJPuDapwDe5zmdNdSHVmPDpQFgLysGFNQ1lA3iNfhg2vxg5kmTScuAtIRTiTNm
	fJL4mJ9nUZ43lSBOlXaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufS9g-0000000Atij-1U6R;
	Fri, 25 Jul 2025 23:48:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufS7D-0000000AtPF-3MtZ
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Jul 2025 23:46:17 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJ04Uk017942
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 23:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SS3LsZZUDvLKSs9n5Nw1CMWX
	GcUNaHHXYFnDw2nJXgU=; b=XESajgufqWZpi46/y4tVeJ3PW+PDX5TOLNJDgvIl
	VEwkVpva2gu2Osh/Pi8o9xX/9JEXPc/5s8IwR9ZdLUtTAejkC/GoteVaZrm/2LBR
	l7ho4qz6drtYCf8i1nazKxjZmQaRPG7NpZMB4N5pf0ZP/cYA+Q/+03XlMnKgdgka
	lldkmaeb/8ArWEx+IFAiFWYljr7c0M9S1Djhqxy28Wtvh5ktSW08q7Q7PUW3pgNN
	mUvO+wi/hnhofRR8hTjdFCQQXxxgQnZGj27YWq4v6yTHug4maU2NpPWxIsVJZwCm
	MChIqBdFjPx+OOVGxDFiXlmqSFVmhmXNMwxQGxKaBBXHeQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2wksmy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 23:46:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fac216872cso57954906d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 16:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753487173; x=1754091973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SS3LsZZUDvLKSs9n5Nw1CMWXGcUNaHHXYFnDw2nJXgU=;
        b=Sqx01WEPbqO0hof3ZIi4vD3f7gVwX7nyqC9aoxVbS2iVkpBBjXirFrydDbyT9glCnR
         P51UTAMJczWKwXlsBgdWHktLR0lmNtQ8eNj5XNbIlFuh64CDq3sU77XTCGjUltg2NQNx
         Rig656wQ8WX1FaZyNTGY7NwNJbiFchSBm9RUYn45Hk12w/G39t5UGOy8CT17td/Un9AA
         2HkhVCm8qxYD/43NqLH50e1FHlSM6K4i4v1p2BV24s6nO9M/Tpo5xYZ/yqgCsQny0lYK
         g3UQE+j1aX/LHiLFtcj9BjwQsZGCtaqDOGgdotkWy0EAp7WGtLzZ4dhgsHRaIVp1REAt
         nl9w==
X-Forwarded-Encrypted: i=1; AJvYcCVf2nvYMI4eQX4FbfLDviCTVA7s1SUDfaBWmy8MQUCzJCdeUOwZqf4i6Mz97kEftScG648wXyAOVorZ+EruVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5yYbEWlCM297Pd91JhEwV0pSuuU1ctWRxmIoOdTkAE/m85Z+r
	ToVh6SGFRdyixV5P2NeXdpfl74zYkW3NIMQDiTVkFTk/rsXwUupXvaw1FtshNFluHDNEaVnTYok
	zUbUGYz8OoVXef3KDQ4lqEt+tU+fv9cLjhXePRCyynQwBnv6FoD3GUFPdPV9wWvPhMrKSINrIZB
	8=
X-Gm-Gg: ASbGncsLq7HsLamTbXr9GVAvpNt2MMsJ4kNmFbir+oahfSUHkcguFz+crD//K7BT7GZ
	78jwqWDyLJZACsbonGtdd92WV+wlx0bZvPWT8ZDrFAz5K4PryEH5/V+De9evHTJB9BYiWsLaYt+
	vcuWiAK22/OEZHopcQ057bbkKdaPKBJXM/MgUcWjnMdVe4elsHsAGWhjidKNC7AiwkH5nUfn4R7
	USUAfKG3UQ47zId4KFhahdtm5N2wl8rSb+2DHCJlLgwA4VaI14wtiu8DlOeP3ZAb+gDqb1y+v3M
	wGJV2Zkg4aKzQ5jbOxJM//hP6O2276NtwTaEAvACVCnzjpePRk/QDGm5JxvZ+pWR+ZPkEgBMcHb
	MMzJO48EYruGcUpaRZfy8QkUaFVUUPtWdHBEmt92PtevXYlBl4MaO
X-Received: by 2002:a05:6214:2aa4:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-707206fc4acmr49971436d6.14.1753487173375;
        Fri, 25 Jul 2025 16:46:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0Rfyw4lsowFfqFRh0Tw+94/AYPklbtjVdrBLBTfDDOYsM1V7AqVF33x8eAQDradrWbESlSg==
X-Received: by 2002:a05:6214:2aa4:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-707206fc4acmr49971186d6.14.1753487172978;
        Fri, 25 Jul 2025 16:46:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63363568sm180197e87.94.2025.07.25.16.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 16:46:12 -0700 (PDT)
Date: Sat, 26 Jul 2025 02:46:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v5 09/10] arm64: dts: rockchip: Enable DisplayPort for
 rk3588s Cool Pi 4B
Message-ID: <gmc6cx62knfffgiburzzjgkxifzjk4c5nh6gwjdtk3uopvq6y3@azpfwhmrsy2x>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-10-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-10-andyshrk@163.com>
X-Proofpoint-GUID: IB7peREIbSlXFMgdTNuidAMxgBcWgf8G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwNCBTYWx0ZWRfXzQLQcCxoXxIS
 yO0Cp3hOJ+dgELtjv0jbqu7YkfkL34Ix2IwoV9XUq3yHXBZ0Rc05n88bNLNgcQUnvDoqI6wNz5w
 Vb0tbcR6NQTV3KCGYpm5s1VDwGByrQPcZSxZosRFBLHCpl9Dk8diTZov+TQIqHbQRSUYGcnnPJc
 1v5wZPyuUXgvloz7+swHQO6r7gG35fR/OISHiGXra8QJT9wy/s0xVpxddwoW1fBTzP1k3pc+Kvn
 9sLHsFalU5Y+YQEGlSqhWXiDGBbgQovKY00ULmRe0nr/YS9vnJpxc1F3WraomHXTnuvlnTbsCJM
 AtPDMFBa89fMmLQej7HQPp29aW3YBMftH3DQILoletEvCDY9WYZ68Tn599LyJ/EOuVfge9sOhT4
 6ljS5nWZyIIOm4U2gXePGRFo1w836fBpx12Y3e+oHzTLFyQtjc7pp/AJdS+OkVEonBGpTTkc
X-Authority-Analysis: v=2.4 cv=d8b1yQjE c=1 sm=1 tr=0 ts=68841746 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=tTaqpbVWKKepMg41KaYA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: IB7peREIbSlXFMgdTNuidAMxgBcWgf8G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_06,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 priorityscore=1501 phishscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 mlxlogscore=849 impostorscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_164615_851715_9542504B 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 16, 2025 at 06:04:36PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Enable the Mini DisplayPort on this board.
> Note that ROCKCHIP_VOP2_EP_DP0 is defined as 10 in dt-binding header,
> but it will trigger a dtc warning like "graph node unit address error,
> expected "a"" if we use it directly after endpoint, so we use "a"
> instead here.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - Sort in alphabetical order
> 
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
