Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EA4FF8875
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 01:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7pSHpQC5/33k11Snd1lQVbe20gN8RDiMG7XaXfYeXk=; b=ItUNfIgsTc+sca
	qfJAmqqSw0EJ4xFsY9LjxpjS25c4BTKDc98Vj7o75wQoGeCyKxJuSL0HfP6Q4pJxCkzRbydqR6LtC
	ClfdTNb+cE4GjEup4UK/l4Brq88k6u6Ol8fxzIu9cWLQpWhsEky77g29N/56npwIW4o/KOwEdqsq6
	5SWP5kXwbuCgMYRN1CCAEKBwBbWdg0P6IH15WxmyPtOuwAnc2EfxXL7FbzBWbO1UoFEhhlEllgbQg
	s7320lIX6JbPsN6+P+E5uy36jAAI5FS3NMYL7eK26mKg6TihjxKfWD4ORckBv7y0dBPnrYIgO+gmB
	6HaiEb8bNzODBh5osUbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHu89-00000002kiK-3C3U;
	Wed, 29 Apr 2026 01:54:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHu87-00000002khk-1pfi
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 01:54:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63T1ofeG4070724
	for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 01:54:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hl+lm4GyDtdr7iMFEoha/39D
	wXm/4Uwgmobplc35OLk=; b=K7vnImj6wKWVe6AfnduJF3bmaaumQHOQxhchubUN
	iMmjZwbu+gqDOuBdRMSlgekHGZwSroAaBs/nMnL2YJ9wba65pWNYpdxTokCpfgW4
	bNRz+6iEjkm1XVBJ3+6vP1VRkUZyGftyO+/EMXPapqe+xn1S+pPEU8Ou1mF/uyWf
	WDipwfep7OEKTVLc0GW8MlcsJwic5dMrYiqVWh6tLeiOeMmVPCkPwIID58cxGMfD
	13u2q89fvyXo0MtKsHVtjJAhY1DQeBKonGGjvcRmWzbxQa42EOBqrpmDn5kOFuzQ
	ESWSCtAQ35q2/qLBYWDKO0WjuVz7EnELjN9DxNAsSGesNQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtttjk75n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 01:54:21 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-362d9dd9a49so6685042a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 18:54:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777427660; cv=none;
        d=google.com; s=arc-20240605;
        b=Cjirlb/pHzKagxRkZDsWQeoD4F/H1Es6dYqWS8yEVWiyhMj8l+vmNB8x2u+extBUsr
         HLSv6BR+5orFGIJUSweuSuWG1Cy0QTAYA720da5UoxOAPe3x/+8/nv5X/z3UylWxT+hm
         4yWKx0UhLZDmra/ZHf/nZq/s/X9eg74/l7H6L5LgKO21O7rIzTCXmV/APBi/ut7bqCaU
         wynAR3uO4Ri9iXXiYQONC9B6zNm8/aDh5YlFdz026vbzJK0jfnXPvP5jWnjy+FjylpWi
         J/pmHnOsAALpI8HKuqtYth2s/vNd4NtibgrAj8KjFSjVGaO1W1DFXtsleGMSnmTmXa7F
         I/MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hl+lm4GyDtdr7iMFEoha/39DwXm/4Uwgmobplc35OLk=;
        fh=vBB729SLgmBJZzy3X3NPNWLgA8A41codLwNyy0ZWrYA=;
        b=ArmOhUxsHbBtLOSHnIH2dXYYzt5g1Jr9x0Hd5JJ9frJv8BP1jJys69R5+b9uASA4kF
         d2bTrIzvFZ6oCpkGD5V/Acl8rXx61+JuxfpDrgsW5GYArs3Vnlp7kmiaSXBm1rI0e0Wj
         XaeF5qdjcUKMl+5yEeBHuZi/55mE+eseqYinuUpt2odMGRApaZ2A6I/6LIxlyovTeEtY
         wxtazHA2whzkdiMq/PHcwLaMcOMIUNZtLudUctVj6umE48d5AkoYNqX7zWfU7MADCajZ
         LHQE+iHR9x2YKSL+FQCsXH+zuJiRj/uV7nfNVrzRVaS8MQZdgA0eUWsqxJgmI2XS+DFd
         DrQw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777427660; x=1778032460; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hl+lm4GyDtdr7iMFEoha/39DwXm/4Uwgmobplc35OLk=;
        b=MKfnZWUPYhrM5wvMLyOkUIib+jRC9sh1q1NKDMTv0IWM0IV3MAHbCL293lJKp4RQNo
         tTGToRMq244dD3Lrcpj2SB3306XX0K0U0Dj/zTPOE6NsR/iuAj3gM1ScSBCmhUFU/UsF
         Hj+6p42+tOoXoOyW/NlhD9LB0IC6HH42o1CRjZwiXcQaphWQzhIzfl790fSVJCcjUxuE
         yyS/mDEGbgGH0HH7f1qD37jLmGbOoLLvy5RUGBGbBGWZGhpcqvkjWVaQSQJ6UuNFT7wO
         kh1RG1xYtO/o0VqJXfUKeKVvajiPbdIG9YVBEcRHnVeoU0suCfXka7/1jVBLNbEKDGLK
         U7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777427660; x=1778032460;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hl+lm4GyDtdr7iMFEoha/39DwXm/4Uwgmobplc35OLk=;
        b=MbgvxgYbFPwJNdM8kUJsGn6pFlFaGcttfX3+bYquoBU9c2eEpL68T4+go5Rih89hRz
         T7R7OrPEuN5i7UaJwzjeb8XTWREB17wGVYtvglysLgzqX+6PmdBWRUMAOq+Mwj2qNXxA
         tOly7cukOTZQAEcYb0dc0WOze/JPBSjOC3oVJXCfz07xZ4i9oHXKQp8ZCvy/KJTB2rfO
         n1x/ABTLJpwFkgNr4Gxfb6k/ckwuImybFQjPrbUH+5F/gFjrg+xwvBF9zRRPdMBQQHvv
         gLdVF+ournlTn1ELIw0QZCBBZILaSoTeBXa0VMgae/kbmwCINcy7iaM8xMiV+fItyUiK
         ev4w==
X-Forwarded-Encrypted: i=1; AFNElJ9CY1uWMlIQEnH+4BAMhb+cbgKGpkHV0dwb9qI9lpfOvIAxn2YyQzkTkwTkY7ddBC1zfodAaKpAboqljSnqrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvVSDfy8jiUHYNRSxzLRe5cC4HJUdu+6E95n7sFy92gGPjdbKv
	TYyDnQrFw+mmEWrpKP03fpDMLg+iM2At0VXHe6ATD2tls3oyNpD52uJajngXnN0D6f52cB29QwB
	p0e3xyBc5Y8r8vDJzoM7WnldpN+5fARWOXWvNr9Bh7fk7+ik12aqrth71A3a1zvXQfx4e4FEOn9
	zgKhg5paIVJHT3qjAmXdFfIXkGfpfM0gE19RyV55vr0CMXmUI3/w==
X-Gm-Gg: AeBDies0+31RB9FexMVmNdhJD4dE14AahDUL2foKnTXkDwLiZWXd5xiFNPtFSwLp8LQ
	M4o000eBqabjKpnfZa9a+ZTKgZeqKdQU69vwk5put6Rn/WATyh9TuWNEO/8hHQqdQ3vf6wwBHYi
	jYymN47J2/0WHlOx8zd0sDNV6WD/pYs8CYkWrbayO3LwCYTRyAOSKMm406GM0E0W6stgsDg7HI0
	xYQ8tKu639tffm43Jcx2ciMRr7XslkOHVHmnTM7rY4tHXcs
X-Received: by 2002:a17:90b:5746:b0:35d:ab26:5786 with SMTP id 98e67ed59e1d1-3649204bfa1mr5252675a91.19.1777427660357;
        Tue, 28 Apr 2026 18:54:20 -0700 (PDT)
X-Received: by 2002:a17:90b:5746:b0:35d:ab26:5786 with SMTP id
 98e67ed59e1d1-3649204bfa1mr5252653a91.19.1777427659813; Tue, 28 Apr 2026
 18:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260403185303.80748-1-jonas@kwiboo.se> <20260403185303.80748-13-jonas@kwiboo.se>
 <nsgxyv5sflscs66kxcgbyapivu3yjskfqzeqkt4yhnjfomyfav@rkxft2e6lqbd> <d9d55427-2f56-4e3b-a476-f3981c9c20a2@kwiboo.se>
In-Reply-To: <d9d55427-2f56-4e3b-a476-f3981c9c20a2@kwiboo.se>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 29 Apr 2026 04:54:08 +0300
X-Gm-Features: AVHnY4IFeksgvOvwzOkQl4tXEKJ57for6VuKl8zutxwbX2nA0ihYBmXwGJG8Yis
Message-ID: <CAO9ioeW+i10LV98AaR3ScT_SsjO73wyd4MRJoK19w_ZKF342Fw@mail.gmail.com>
Subject: Re: [PATCH v3 12/13] drm: bridge: dw_hdmi: Use dw_hdmi_connector_status_update()
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Diederik de Haas <diederik@cknow-tech.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDAxNSBTYWx0ZWRfX2S2chzic0hHP
 lfO8SS2Yg998DzEwPGt372p7PWLMPKYh28VPR6whDpYki8eBtuEMpwEV8zSC1aAws4tSZLPHN3E
 Auj9oIjtVrGS1K3/gCi05tb67YhS5M0xv+Oc8MU6R9JMVhrKg5/7xZiuz9Z29WDVMHje2THBJO7
 305sD39tZRTV395sjSiouARY2Ii7dowy/rUgDYlGUUGZL62FPDCUXxFxPgFr/VlZcTkJA6T0ujt
 eJz8zK9cNVbWAv9IHG8W4z9YpumfKMdHLUrcBZC+1pfKT90yrALRxUCMl9YMiSXweX9FkYZVVpO
 y36yrAJ0x/+S4fwXihyQk/aEVhTgrzfzkSDSpYcd+1GMX4ThkfQyRFkKm/Vm36J0WfykAv4bSY0
 MBu9GOWPLIrpPLeDuKVtDQ5Qwn1FJSvkv5nwz5Q8lleySs9I5YXJ3pjrhY42ELHsZCtOl9R7LGe
 ygeMg4x6AJoxYkxJ4sg==
X-Authority-Analysis: v=2.4 cv=TZKmcxQh c=1 sm=1 tr=0 ts=69f164cd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10
 a=s4-Qcg_JpJYA:10 a=sWKEhP36mHoA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=NEAV23lmAAAA:8
 a=umLxKfaxry9jw5ZBSt0A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: LZfWdjDWNDRpG8_3trsFjf3fAdPzx63J
X-Proofpoint-ORIG-GUID: LZfWdjDWNDRpG8_3trsFjf3fAdPzx63J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_185423_604914_0906ABCE 
X-CRM114-Status: GOOD (  26.32  )
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

On Tue, 28 Apr 2026 at 21:53, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Dmitry,
>
> On 4/28/2026 2:42 PM, Dmitry Baryshkov wrote:
> > On Fri, Apr 03, 2026 at 06:52:58PM +0000, Jonas Karlman wrote:
> >> Update connector EDID and CEC phys addr from detect and force funcs to
> >> ensure that userspace always have access to latest read EDID after a
> >> sink use a HPD low voltage pulse to indicate that EDID has changed.
> >>
> >> With EDID being updated in detect and force funcs, there should no
> >> longer be a need to re-read EDID in get_modes funcs, so drop it.
> >>
> >> This change make the dw-hdmi connector work more closely like the bridge
> >> connector does with a hdmi bridge.
> >
> > Please consider using drm_atomic_helper_connector_hdmi_update()
> > directly.
>
> It is unfortunately not possible to use that helper unless
> connector->hdmi.funcs has been assigned a value, currently something
> that is only done in drmm_connector_hdmi_init().

Ack. Looking forward to reviewing your patches.

>
> As briefly mentioned in the cover letter, I am working on converting
> dw-hdmi to be a hdmi bridge, so this function will be replaced/removed
> in a future series.
>
> See [1] for a work-in-progres snapshot where dw-hdmi use the bridge
> connector and has been converted to a hdmi bridge. This works great on
> Rockchip RK3328, RK3399 and RK3568. More testing and cleanup is needed
> before something beyond the initial HPD, CEC and EDID rework/cleanup
> currently handled in this series is ready for posing to ML.
>
> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20260427-rk-hdmi-v2/
>
> Regards,
> Jonas
>
> >
> >>
> >> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >> ---
> >> v3: Reworked 'Update EDID during hotplug processing' patch
> >> ---
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++----------
> >>  1 file changed, 14 insertions(+), 10 deletions(-)
> >>
> >
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
