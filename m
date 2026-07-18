Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB4A6C44521
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 23:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYGxcX5AsnHs0pyhfXQ0g37oh4LTtpFt6XBfS+5X48Q=; b=Pq51ms/7eDWDCU
	YpByz5TSmjWbps5qS980PAR4i4A4LDT3xizBvgX3AA+MGQLfYIsabe+hlzddSpLlqzIZZnntxoFrl
	dSOGWL67xizTtKQHqSphneEJYS7sC8IE5gJv1mnOqOiaRlN572IRCsvQ+Mo1Edd6fF70sx8SgoTYY
	HQshg1o4c2/u9T7623al/i/RpSoKB7A3xZioPkT25W/XRSyjBFijifKoZX1UEaMse/WTWstiVsKJu
	jZo9fM+WS4AQvZhGnIHc+TnlgLCZd/A49AuVdJIc7okvQmHJlMxELjubhumW9tisG9FsIW2LKVOI6
	49uLCrUFz/zunOvE6fdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlEJK-00000004b0B-3GKn;
	Sat, 18 Jul 2026 23:19:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlEJH-00000004azn-3yUX
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 23:19:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66IN5R2d1742568
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wixpu2kchuiVCtWTEBuCD9grp0pwB8m9u6bmCRDtb/k=; b=b+N4z26Ugd8jFgPw
	pH9UdUbLhENi3IJxjAvAwydUlAJBZ7RV+vlAqik0hAGZzK9/UgiPYtfdMYTBDHO1
	7FIdNNMYF6RsNCbPUO5XO02p+aHCIvEGwI2MrH4gmWrtjfp43R6JVqOvKq5vXvjq
	k8/In88xguQXOK+whNnbyCqJx4Pz4dof/Q3aoArLGi2qHKhO4fda+IEGawZWDgRz
	J/K1q5U6HxNSXvuFBi7e9ahQEyClO/GTUC+1yC/x4CHCn86UB1zRaqccsPvCC4D7
	CoBKRdN77CUi2I6RL8XPpxs2pkxbKW+OdzU5NRuB6XcqRdud4FJjEsyDKtmzBcmO
	tRj8tg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2s7snwd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:19:07 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38c7e26ecabso5335271a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 16:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784416747; x=1785021547; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Wixpu2kchuiVCtWTEBuCD9grp0pwB8m9u6bmCRDtb/k=;
        b=SP7Y67XvZadCoHc5H/UFjWln5NnHaI1OVSdhlkTeSXU6TzWQr9a2JK1BMBKbHlscA5
         N63WbyIMF+IddEa/fbrquyR/aEBzOPs3H6PKfYU5OOWCktDzNWGlra4RaLqgUV1ob9dV
         XaP6fEbIztKzi1RvRulU1mPyYEscphMPnxPMI6YJnXcTAl/Z2OEpk5eVpu9MCfaxyeBM
         m1ccTX6KQM3N+kZA7gZxt1ylt915RkbotlsODEEr/6d/LNCChDgzHvjGP9SkMndG+OWU
         K3AAPBGqa8rbWy7sds7JOkxbAEk1DdgzaCyHJoR0P2lRHwiIyWhOMfDZD/+WG/xBd3Sj
         zqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784416747; x=1785021547;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wixpu2kchuiVCtWTEBuCD9grp0pwB8m9u6bmCRDtb/k=;
        b=ghFm9r3Ax/Kn1imZ+9H6FsiSx67I0cUv8RaNHWogpqnV+9JdZAzTQlO6j/2KbSgsJq
         EFHj45NzOK1g7RT90tx4BazkgZKdNqQNcUueNPVCpxCA31eP4jXFyoEE/8CXsrCTiKXN
         6qTSd0DIvSE65OVKvmuqVANK2B0KRgZ8QJNByBeMUa0TXCMzGL++drDQgcIxqugfd5mP
         eP6TBviUpJQfR+7caND0kOcqevqiZWv8xgPj+q+PyRPLXnohtr7xBpHdfW3vrtc6uWwd
         SHnpjYqEshY/xBMqGMtU9iWAk4RbqVs/QLXyTtaRqUA2z3Q3RHiVPB3nMQ23TEcG4kFd
         uFFw==
X-Forwarded-Encrypted: i=1; AHgh+RrgIMdRGSIIT35c3eOqVQtdjnXMbB40IiAwWHJlrvMFT/ool3MsAEoG8WYMsqAR/7lBhPE3F3k4SfjKy+L9yA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEvvCj0HvXBt5ewn0/nAETZAJRFrsIhr8P00u9inHsxEehNwdK
	WGrbHv5lPdPYPK1K6sia2S5sl9RkeAiR2MVBR+5nlg+juTcEB4TJOmVtdy+3u4+UGUhahECo1k+
	I3fnzjcptwKUui0BAdyqC1lsyxOlVtNqAC4zFRjwqtAQkcw4eo5w8SRKbIf9JTgntHsKt+kqv83
	jfR5fGP8Q=
X-Gm-Gg: AfdE7cnFzEsFamzt3+pnWIEY2HeS2Pe0kScNnix/Ym0I0lQUieOZfnkDy1NIH5meSnn
	K3Ddm0UzQWLJN4E82D52LTosB4Oyq2aB9wXcz+qhIkdWKjpeHdTrlpqcqzUPfRD20A3az1AL+qU
	yeZf2YA67RnEWUvF3wXG6FCUp2Nl8UGaR84INsI8WZfuq3ZJzdan597reu3eM1YNmreGFT41wBm
	w6h73LPoGIG5kMhyl04726wg8mTzRNDavTwZuXvXfzM8uarfEBdU8OOl+djxoQgEXo1FjKO4vrm
	Ue6qQ9Ro8LLbjMF9lBIA0BI2Gm8veNlCZjCPQhg+HpYN6Oq2TeeztX3ZnByKEZJO5aNh+mxxZ7p
	LJ8O/VRgpxqH2wzhU
X-Received: by 2002:a17:90a:ec88:b0:38d:adae:4866 with SMTP id 98e67ed59e1d1-38e4b516544mr9060516a91.21.1784416746414;
        Sat, 18 Jul 2026 16:19:06 -0700 (PDT)
X-Received: by 2002:a17:90a:ec88:b0:38d:adae:4866 with SMTP id 98e67ed59e1d1-38e4b516544mr9060496a91.21.1784416745955;
        Sat, 18 Jul 2026 16:19:05 -0700 (PDT)
Received: from jic23-huawei ([50.35.46.84])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e4ae14a32sm3377126a91.0.2026.07.18.16.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 16:19:05 -0700 (PDT)
Date: Sun, 19 Jul 2026 00:19:00 +0100
From: Jonathan Cameron <jonathan.cameron@oss.qualcomm.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
        andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
        jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove
 interrupts from required
Message-ID: <20260719001848.435886e0@jic23-huawei>
In-Reply-To: <PH0PR19MB99733836951FBC9755A5361641A5F82@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
	<20260713215842.69097-3-macroalpha82@gmail.com>
	<20260715-mottled-uncovered-mastodon-6c08be@quoll>
	<PH0PR19MB997338D80EB8ABB7C623850A23A5F82@PH0PR19MB997338.namprd19.prod.outlook.com>
	<82e3c736-f06f-484a-887c-9e156cb7cb44@kernel.org>
	<PH0PR19MB99733836951FBC9755A5361641A5F82@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE4MDI0NCBTYWx0ZWRfX3lPXh91/ORu3
 Z0svXvnTloe35BaBOHXxDnTeujrFtY5Z+j8H1hulOLB9AG7xUYitgdVHSYKoK2xGLcxXL+O9IJ5
 YODe282UhNUUI+uIFgN8I/XinoPWJlCv4pYnSUSZn/4rseR+xDZYAgvyr6PsJLUli1+K/hWgSj2
 zjksW2jfzlrmxs7/ZO6l7lv4drfffRoP5+YxVXj0v/Otp2N3MUPZA66s/cnk1ImctC1LLFHQSj+
 QDgNvdiFsIHpi6heB24UR04eyO7d4MQf0BYursNmkYu/EjayUnvgx7qrdlAEIRE22mm0mORIqwW
 0MrfDhEl9X1WjkWVG90t3u8gw2gIdVvABOdrtQpk9EYBBXB5PX8b+zHQHkP9qTKff5MmDQIC3Ns
 i5EnAq+M+AhiidK5zlF7cMsiDIr3KrP7H0c61LBUKpZJMDVnsFERWFp5Uc+tLPFlfSEkV/POFvt
 pJaXhuFbgt+pLYfHofw==
X-Authority-Analysis: v=2.4 cv=eKsjSnp1 c=1 sm=1 tr=0 ts=6a5c09eb cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=qC1CW/w66vtJz1P9yTJxNA==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=69EAbJreAAAA:8 a=74V_kGC0JxGC7Umba8gA:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: _ACu3e71suLBzOcwoDuKf0TPUklKQyzQ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE4MDI0NCBTYWx0ZWRfXx7fE09pdLV9u
 fSpJnp27MKPJV9uy239Yxzg9zJnKb3eQQWTT76O/FCKLe8kGXCpNSjjcXeI0XH1FkDE1gQ5QvpH
 ewuZUaTFmQwkKDdNJ/HqGryRYJaVpVE=
X-Proofpoint-GUID: _ACu3e71suLBzOcwoDuKf0TPUklKQyzQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-18_07,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607180244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_161907_999100_051BF161 
X-CRM114-Status: GOOD (  46.09  )
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

On Wed, 15 Jul 2026 15:34:53 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Wed, Jul 15, 2026 at 08:29:44PM +0200, Krzysztof Kozlowski wrote:
> > On 15/07/2026 16:52, Chris Morgan wrote:  
> > > On Wed, Jul 15, 2026 at 07:52:52AM +0200, Krzysztof Kozlowski wrote:  
> > >> On Mon, Jul 13, 2026 at 04:58:32PM -0500, Chris Morgan wrote:  
> > >>> From: Chris Morgan <macromorgan@hotmail.com>
> > >>>
> > >>> Interrupts are almost never required for IIO devices per upstream
> > >>> maintainers. Remove interrupt as a required parameter for the
> > >>> devicetree binding.  
> > >>
> > >> That's an odd statement. We do require interrupts when the hardware
> > >> requires them. We do not require interrupts, not because we have such
> > >> policy, but because hardware does not require them.
> > >>
> > >> Plus, we do require interrupts when software implementing ABI requires
> > >> them.
> > >>
> > >> Above commit msg is simply inaccurate and misleading. Instead, please
> > >> use actual hardware arguments or how ABI is actually used. You must not
> > >> introduce changes to ABI just "because" while for example making that
> > >> ABI conflicting with existing implementation.  
> > > 
> > > I will defer then to Jonathan on the specifics of this, but from what I
> > > can tell:
> > > 
> > > 1) The icm42600 devices don't need an interrupt for operation other
> > > than for buffered mode or wake on movement. One-shot should work
> > > without it.
> > > 
> > > 2) The existing icm42600 driver does require an interrupt however, and
> > > refuses to bind without it. The driver could in theory be modified to
> > > not require an interrupt though and skip using buffered mode and WoM
> > > when no interrupt is present; however I don't plan on making these
> > > changes at this time.
> > > 
> > > 3) The new icm42607 driver I'm trying to upstream does not use an
> > > interrupt, because on my current test device it's not even wired up.
> > > On future devices that I have with this chip I may pursue using an
> > > interrupt, but it will never be required.
> > > 
> > > So should I go back to requiring the interrupt for all devices except
> > > for the new driver then?  
> > 
> > You mentioned two drivers, I don't know how does this relate to them. In
> > any case your commit msg is inaccurate and not a correct reason to make
> > a change.
> > 
> > Best regards,
> > Krzysztof  
> 
> I'm confused, so again should I just go back to the way things were?
> 
> This binding is to describe the hardware for devices using two distinct
> drivers, the inv_icm42600 and the new (that I am trying to finish)
> inv_icm42607 driver. The hardware requires an interrupt if you want to
> use features such as wake-on-motion or hardware buffers. The existing
> driver inv_icm42600 always assumes an interrupt is present and thus
> fails to probe if one is not (making it a "requirement"). The new
> driver I'm writing does not use the interrupt, because I don't have
> one.

For dt-bindings, look at it from the question of 'is the hardware useful
without this interrupt?'  Answer is yes for vast majority of sensors as we
can either reduce features but still have some useful ones, or use another
approach such as polling a ready flag to replace doing it with an interrupt.
It is very common for boards to come out where none of the interrupts are
wired.

The only time I've seen that they are actually required for IIO stuff is
for very simple devices where the interrupt is the data - e.g. stand alone
threshold detectors with no ADC like functionality.

All this is independent of the driver working without the interrupt.
It is fully allowed to refuse to probe because it relies on something
optional in the DT-binding.

Jonathan


> 
> I'm thinking I'll just go back to the way it was previously, unless
> Jonathan disagrees. The interrupt will be listed as required for all
> devices using the inv_icm42600 driver, and not required for devices
> using the inv_icm42607 driver.
> 
> Thank you.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
