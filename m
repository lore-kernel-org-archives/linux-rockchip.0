Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BD6C83F21
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 12:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPLWHa0bUDeY2arw3gviLy3jN5HOUykNFgohT0nsNeI=; b=bttJXX08sFyuzS
	aspX4JPDlLokZFWI0GM871xvjZ+O2kf89EGebxvcMKDLUxhn7zZON1wFsrBzFGF5bMEMm1zjAusZa
	bkROMloUMR35eK1G6ahT+of24CzJG1ZUGDY8WbtZ5OoRLwy+u6HF9wMpSLQWNMGmfoGvIk3C+tHlH
	tjp3ToIHd/YOiwdJ3omLcJgQG9kkIe+6cuycJ/8Itj3TUFcqDtB6SJIa++l1ecUpUlan2/bvYWsDV
	RgekKt9GNvbDmG4luYGq56J6nyKdvIpZtTIMvS0boOXtfszQ6yiNbA7J6i5Hmcs1MjoO6cFnEfleP
	AtxE9O2ON+PjVq2znC/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubezY-000000056XZ-1rhA;
	Tue, 15 Jul 2025 12:42:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeOJ-000000051U8-0pdX
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 12:04:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F6DhsH030096
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uewLyWaWo+XEtP3pU1ovudoo
	X8FXuLSHNKA5wv9Jbhg=; b=dGtPvDSXLEiPdl3CHjLxdrhQbN0NwOq3l+YIPu4X
	hVkm5cNDxft1J4ab42X7iJgqqENQGeXEmEU36rxBCi6BDwLZa78Ii6TK61uWkNEL
	H9DGn7x5fOduOzuOz6Z+S7RbZg9o6LQUuDw4Ls0rRfeHx5bQtUWxnbt379YRfbHq
	1sTTyY7oPBz+I0nqX0ojmZx6Hu2sZ0QI4RiOHoUEHheUKrl//Rs/4oBAGA9QeeUf
	OYwVj54GmbV91u36r1i83vQGmmXpHhYf9guevfNPIWlzlr2Y0RBbxKAzx1cu8Wwq
	shVqwzuDNxs4w5lBq68BQGmYGhYB86tQV8LAGtiCgIoNXg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dq2xhs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:04:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5bb68b386so1604027485a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 05:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581049; x=1753185849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uewLyWaWo+XEtP3pU1ovudooX8FXuLSHNKA5wv9Jbhg=;
        b=aPj0tmiaD4w5Bx/kexRcZvYlQ7APTBLJxsJnWRH2pBYiysKK3RN5Jc3MbyDj035A7G
         g8AGR8dHo8vsqGJMjnRJoQiahCMPitzxHOgx++M6dLPJwv6URLH9jE+cVGDMgy8yh+Vl
         PPvbpnVgvWrUSsr5h5ZDQjq25XfeR+VT6E0sQqiGiIkTpFB4G4qE2txAomGPcFdWzkcm
         Nrea5j9Qeq8bV6yGwPPASK9oomcLxeX0HGfow5tyhgPWiZ9+vkcKwO26MX1CtJhCTHD5
         LWwcIliKX93ARl/qItDXrrJBNGyfqOJ3tk3PYo5Zeq+4v3L46j6EOQEWZ1MFpbQ+x6CT
         mwhA==
X-Forwarded-Encrypted: i=1; AJvYcCWH4EB0IIR+eq1PEAN0GVCDeUs/g4CkuPq78UdHulDnN1nlgcf/1wWKyPXWnFk4R8jbK7NxT18lM7SDdFPTrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYr+8Q5qOgHpV91xzxZVUmrFQP9VMiSfJF8gRyE4KN8+xJWUmm
	BeEx7BEC/XdOVeB/i2P3q4Pr8uG/MOqINZFcXtpUCVGHJS5gRkeTCdrgdK0fktJEH8wYB4EI2RP
	9Hft3TkWe2vvgMza+sD1AVZ9dGW2Ks9HwtZcjVAxFbRcwhRiKIrrTFcJ8/V8rEBkgMAnSf5dgIc
	k=
X-Gm-Gg: ASbGncvToGTedXDovt8qTGpzVfYHtdnUnYERomH47E18fcVnMuDPv53qxX2UvC4QgD5
	yiJ3T/fZtwCrdOnSrjprNeWtSGT/1PQU8j8xsocg2A3BAQSjxaNGnVkBY8Y0I1fKkp8I/9qSH0p
	syaHWQgZ+CmiiRv5cGJdiawOF5cLJC5j4lvFUq/mf6q7L6TBpSLfKuG81yN7TEjAswRmAihI1Ti
	F9tbbqtO3YUmuriyzygpc2gld2FYKhnR0Lytgc0xVdj4MFeYssO5GVG7bYgwryjbo3ceqVbufCQ
	jguViTwmNQeRLCD/gk5xgXZukmytfPVnDS7KEZDTPjpRIuergqg6yDIwxPgyWYY4RTNvbgTxgAT
	pG+40Kh0KpXbGTud1gYb8oHnP/XtVh5ocAOOO4aXt04WL0EXb10Av
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517583885a.46.1752581049165;
        Tue, 15 Jul 2025 05:04:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG+QA3kcqdK27HrgZ41em40tegk2sEjV/HwigntzMPoVZCR1JNaYYEpmMQ+MrBS7T3eBGxTw==
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517577685a.46.1752581048678;
        Tue, 15 Jul 2025 05:04:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bbfcfsm2266306e87.40.2025.07.15.05.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:04:07 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:04:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/5] dt-bindings: connector: Add displayport connector
 for hotplug notify
Message-ID: <r7b4y74lr5qwejkejquosaar75mthjvjfy4pp6bbl4pgte6cq4@n3gwjolsaw2j>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715112456.101-2-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMCBTYWx0ZWRfX+v/2cQ+jjSMe
 LAZeojdNNjfRZybgz8qPiHRWY81Ze2Q08IxqYBeytL/m97u8g4ba1ZO7GQothRIuDnymhxDgqpJ
 4l+RhPRoNRR80b4xPy4g9MYDHzEmgTXlzlqI9aQttu2F+0gLUIUrI8js8tKwb8eNcbCXVLwiR7q
 Taji/5V0O7J5ksT9+j/0PpOMdIX2J4Jv2svIEzL/Oq6Da/1uELJ/zSDtk87sn8EV79hkuR5VG7A
 1ku3IuOFttw94EkKlpnfrDDR1m40huZun+ovZ4V6s9ObKndTAwDR3JREGaWY4dWGTvbES7HRHd1
 VQtOvr4WzzRcGpb4MNgZJmjQwfyCasoTeu5gv1qpvoBRjVLrl6Gyk3q2rulzWWuuiDjSQZ+EiCK
 NIi2PZxuBubjQxjU9QnHykb6crZPfXs5Qig9R7HDrpK26HcZ1x1zul2X0XRcaKv5KPfCk65f
X-Proofpoint-ORIG-GUID: 1KwENOf8I4KL-27LNMHgLe_bDjgacI2K
X-Proofpoint-GUID: 1KwENOf8I4KL-27LNMHgLe_bDjgacI2K
X-Authority-Analysis: v=2.4 cv=MpZS63ae c=1 sm=1 tr=0 ts=687643ba cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=20KFwNOVAAAA:8 a=s8YR1HE3AAAA:8
 a=w3lZJLl83XfeLKIF-PIA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=984 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_050411_249971_6824B0EA 
X-CRM114-Status: GOOD (  16.08  )
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

On Tue, Jul 15, 2025 at 07:24:52PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The USB Type-C DisplayPort alternate mode driver will find
> "displayport" property for DRM hotplug event notify[0].
> 
> [0]: https://lore.kernel.org/all/20210817215201.795062-9-hdegoede@redhat.com/
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../devicetree/bindings/connector/usb-connector.yaml          | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Please see how it was done on other platforms. For example, qualcomm
(both tcpm and pmic-glink) use port / endpoint to link to the DP PHY /
DP controller.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
