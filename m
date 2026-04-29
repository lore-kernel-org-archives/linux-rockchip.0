Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7697FFF885A
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 01:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQPit6F6CI7GI9Kn5wI/D0/LGgi4OPHiV0Xi9fm+sCY=; b=AunQZGS9r3ebJK
	PvrpdJYK/YqZohqbJeUGs97YKb1htyZF+dnG/aIoIhYrg7Jloa7uvbn9/JmTrngepGUoR8oEDB0/h
	BmPPT/nz8AYB+TrLdNrwr/hbDh6K8OKT4sjQv95ohr99Mb5rLmLP2MkJGzYcFF6vyd61brm+kVc04
	6tsi1Z+h0lbhB3O2Z/Si2KLpVBi+CgaRbNcuUnZl8wj7Ey45f9Da4wQNLtOABCX56JLnrzODTzp2t
	5z6BBd/Ip9+4PQNHwmJ4P3E/HbiYdKCukDI5rBGgJ30wy8djk9JaDfB6om+JduKKRd4agNrG/fgsw
	MKddibAW5liGTDNqb9og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuBE-00000002krh-1EYp;
	Wed, 29 Apr 2026 01:57:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuBC-00000002krI-0B4t
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 01:57:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63T14TKP4070689
	for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 01:57:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4urT4VP+Xz6y27POMSX0r8FX
	LKE43oUrv36tFzO1cFQ=; b=UaYN3e1tz/BlSRGuiLMZgQCQBm7D/jlmTF5PuOEK
	CbXSaPNBlvaMscixaephMeAGZIKp1qa4l7EBI7Y1Ge4TCw559dKawe4TWJuBjMS0
	1veAsgDktw5zfx31BiEIZ/+UzH/ElWvFXMh66WSStb1MKrzcUUzwQL8Nea8oorOu
	ubZ8Ts8nhayImGm8bOfxzqAvh65MPGZDY4cnS6z/m5Z1N08mHw8U2BKu7lWBtczz
	XsmFU3P1pxAZfgGbsfIwa6Cu1Lqk1hpDg4tXIsIFXVpCCpSA2zBE3FPbgVN3aedQ
	qMzioi1d7/KWzqFjNxN3CLq1PX9f1Br6lVYeuBM3xeVj9A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtttjk7er-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 01:57:32 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-362eaa3aa61so6374812a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 18:57:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777427852; cv=none;
        d=google.com; s=arc-20240605;
        b=QsJ4mykGPNUrIcnxjjwa6heTt+JrOupciryl6ulKpszvjkGY0fNtos9sNwvo7sURqs
         PwbTxyMkwLPqs+TLjU2VNR1Z9D7OmEwSnVQTCDYHhP6FeRiQjwI+II/azsBoruiAAn/t
         0INliiKp76HHF/RE9XgZeCUM8VCe0BWkS4vVCTEsCvj1+nfrMlpa0dKqjKJcZHXRCAjQ
         SfHIepxFu8AfdlNOvDzuhm9cFIQ3L/1CX/olQu4wI7KsDBfte3mE4J1jwKe5UQO0xlRO
         eUwbepxhUDxOaou724zMPycmpUmS+eREaWoTEm/AZyFCiyTvufAXzOBbLmD2GO9y13Jd
         zpdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4urT4VP+Xz6y27POMSX0r8FXLKE43oUrv36tFzO1cFQ=;
        fh=TC/KwVLudkbVsXNQXnYAwwaI+B57AvyGUCQ+ykqf0MM=;
        b=GKCIW+HBQAqDhbHDO0m/XifOSBde5/ahD77CBpGoDI42a+NcrWjJO0bmRriFO9DKZP
         MwScjSF5WuvlVavEe3l8eD8mXd0fLE6DgcbllkkezatljGR05vVywpnP8nTZiEhoLWf4
         IMt3Jg0OudeINb4aUTmQeemo/tqY7BK6+1qQfLd+VRRv7s4cgrhF3KThQdz1Or/66k94
         mHNg5Md4KagbfB6rBreO6FZDgIJv6uqzqHUUJ1UP7NNRrcCcUnq089U4AZzoYEzOGGNw
         vfD/OrVcbM7ZKGhmVpQ7I3NjQV8e5R0WgJJ4ojL6b0Q1rTDFuttruWM7YoK86J47Deqn
         0ejQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777427852; x=1778032652; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4urT4VP+Xz6y27POMSX0r8FXLKE43oUrv36tFzO1cFQ=;
        b=NRXj4nwsag9jJzMZ9tgE8v6aEI7UBB4BiHA1C6u+MjVplqHY/m8s4urtEoGEy7KuBW
         ZiKneoxq/xPDfQ5KQV4GxkE5kxSJfGu9Gl50LUa2hp1XOZmn1HZ6YAbadd+0VKvvTt8l
         Zahae9ua5twQfXwUx5u20WpM2iWCnnRbiIve/UQpHsOM4j3MPytoP5zODcJSfuf9m7oY
         KvmhCPeAVQyTIIAw0Lt9J31W7LfP8s0zRVjLVKdAhtaT49dvyrcOeZg1Zc9B8a91Eb3f
         uq/80oi6P+9Jv6kBFj1Z4T36OMhw752Nr7kg+n2twUHQEybTPjS35F7q6ttO5rLvI47J
         YZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777427852; x=1778032652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4urT4VP+Xz6y27POMSX0r8FXLKE43oUrv36tFzO1cFQ=;
        b=GTdxLkccCaZNKRQ/HdEjGy+/sQZyyFuK8xZR45vexVfV0Nk7Qqmb/zpqV8q9FMrWE0
         QOjHmsYbUpVIe5xAnkhmVgdueCmGhhifdAmerWkc20exc925dOXELQSC5hmG/3R24+dp
         dCdCenKGhwH+2CxcHrF/IytiXzzPJ846UWidw8BEWzHPUajdwhG8AXReo2sBno710cj8
         KHPgnbtXAQ/Rg/bX/bmfjsj4Gfoeu9a/XylUxuO0I+HY3Xt1D+aNIwi5XN9p4x6Zq7dc
         6fwLobffknI6IThHLPH6mVYuxyXqd1Pp/F/bafmN5KL1arkG0EnD+gs3Gxb8CTuChTTn
         5khg==
X-Forwarded-Encrypted: i=1; AFNElJ/4ldXMHOKe9/unu+KerWP7UPQE37bvCxg/+mCUW/AcSCzCaJU4espuqKJJXuo6g6EATI3MuWPHQ+1leSoqwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTz0q/BjhYg7vCDzpXjnkBvYqBJiHMMQUWoxbnIWVwuAalbD4b
	697L+DRTqITtwLRxhzKasN8I6my6ykKOUsMLR4Q0nQ82a09kfIK8w6UBK9AVmLiJidhEyXgJIUK
	3x61yz49upw+mRAd0SZ8AW0FIZyX6gd3SBp04p/tMhXGp8Nde++RfnCYllF7G2Ey06XqBOl4g1D
	II4uJYfOgfuu9up8mqhZUQ+v6eojjayMD4GDEI3Ys9Co+yHkIUeA==
X-Gm-Gg: AeBDieuuBHAEZyvUmJFGRwP3NzgufdK740oeb6oc2sG8Cx/gj8JkN3l+/4Tz0CMcA2s
	OdWi6sgyHX5fuIjMmHidV/nAxBVOd/IuI23I7/sGqjObnSw8feLvoLnvxdwUTNX9wXUSMa4NYwW
	cSgLufI8nIHq1vafqbTvYEY65W0xG2MZw5J7RVs5b2GRjK1em9tjcjDI69aQQCuQp7Hx+7vybPI
	qFrloLClLf5TjWeElKUk5y3u3kF029QwXjrqfInFOePPRM1
X-Received: by 2002:a17:90a:d00f:b0:364:6558:99be with SMTP id 98e67ed59e1d1-364a0f54fd5mr1869799a91.22.1777427851571;
        Tue, 28 Apr 2026 18:57:31 -0700 (PDT)
X-Received: by 2002:a17:90a:d00f:b0:364:6558:99be with SMTP id
 98e67ed59e1d1-364a0f54fd5mr1869773a91.22.1777427851045; Tue, 28 Apr 2026
 18:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260403185303.80748-1-jonas@kwiboo.se> <20260403185303.80748-10-jonas@kwiboo.se>
 <go5i5iiwra426hydnvc5thhgtknv3fa7ti35q3et6frroxag2n@tfbfiyjmtzkk> <9b4a676e-cf8f-4708-b580-8140a2e7a805@kwiboo.se>
In-Reply-To: <9b4a676e-cf8f-4708-b580-8140a2e7a805@kwiboo.se>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 29 Apr 2026 04:57:20 +0300
X-Gm-Features: AVHnY4IYQX_h8aB5YnKvkJJ7Oy4QIDyzxAhVuaSDWbswPbN5Is-XUGtjvSm4n90
Message-ID: <CAO9ioeVb3KMao_jKraAjXUXqOVC=2bLgRA-Q-5DPArFYrgFFwA@mail.gmail.com>
Subject: Re: [PATCH v3 09/13] drm: bridge: dw_hdmi: Use delayed_work to
 debounce hotplug event
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDAxNiBTYWx0ZWRfXwbXYx9llOYiE
 nPtU3EePLvb9BQC2NLJamKhI4uvVlG7XLEnp5DLm+t5AmCm1H+Wwz144FLLn2E9m80rM2wSNfZr
 uDLNV02SlpQBhURsYBx2+PG4N/uRJRWashjnCasT/r5HwydiUzHB50UCb0PVaB7WPWsjz3EAFz3
 PSf9FK835QnHIQPK+B5PxtXklvyqRB8vXZvijCGOKiDogogN+V5MTMid1Kntg304R75OdPpHoHx
 mHOGFJEPgBBJby8Y1vhiPPLrd3TI/G98ifnUHyaSg3YdDiNNnp1SgFB8eChU0oKPMRDgx1mqsll
 XBHfaVxoHDL5t70+T/BcnLviND31RZRjUTULdSakN+tsrSmQ1KxEBJcDf6LVme2AeBfQnz/5UQU
 cQ7dZMM9mQ7CCoJbnTaBudnzwotATGi0DA4/p+sOPkNq4m5SFxJwNmi7HSPlKRjFDpnQJuVXgYY
 XV6D/nD/YkHANu9+fbQ==
X-Authority-Analysis: v=2.4 cv=TZKmcxQh c=1 sm=1 tr=0 ts=69f1658c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=c8wtwwsRZL7ZEJ2JRekA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: xW-E7e580oKOHMXO7fcpWC0uL1iFPCur
X-Proofpoint-ORIG-GUID: xW-E7e580oKOHMXO7fcpWC0uL1iFPCur
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_185734_228624_897A23F0 
X-CRM114-Status: GOOD (  40.84  )
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

On Tue, 28 Apr 2026 at 22:34, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Dmitry,
>
> On 4/28/2026 2:38 PM, Dmitry Baryshkov wrote:
> > On Fri, Apr 03, 2026 at 06:52:55PM +0000, Jonas Karlman wrote:
> >> HDMI Specification Version 1.4b chapter 8.5 mentions:
> >>
> >>   An HDMI Sink shall not assert high voltage level on its Hot Plug
> >>   Detect pin when the E-EDID is not available for reading.
> >>
> >>   A Source may use a high voltage level Hot Plug Detect signal to
> >>   initiate the reading of E-EDID data.
> >>
> >>   An HDMI Sink shall indicate any change to the contents of the E-EDID
> >>   by driving a low voltage level pulse on the Hot Plug Detect pin. This
> >>   pulse shall be at least 100 msec.
> >>
> >> Use a work queue to debounce reacting on HPD events to better handle a
> >> HPD low voltage level pulse when a sink changes the EDID.
> >>
> >> The 1100 msec hotplug debounce timeout was arbitrarily picked to match
> >> other drivers using same const, and testing using a Raspberry Pi Monitor
> >> seem to use a 200-300 msec pulse when going from standby to power on
> >> state.
> >>
> >> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >> ---
> >> v3: New patch
> >> ---
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++++++++----
> >>  1 file changed, 20 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> index f3f8144ae98e..4d079b689b3b 100644
> >> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> @@ -51,6 +51,8 @@
> >>
> >>  #define HDMI14_MAX_TMDSCLK  340000000
> >>
> >> +#define HOTPLUG_DEBOUNCE_MS 1100
> >> +
> >>  static const u16 csc_coeff_default[3][4] = {
> >>      { 0x2000, 0x0000, 0x0000, 0x0000 },
> >>      { 0x0000, 0x2000, 0x0000, 0x0000 },
> >> @@ -192,6 +194,7 @@ struct dw_hdmi {
> >>      hdmi_codec_plugged_cb plugged_cb;
> >>      struct device *codec_dev;
> >>      enum drm_connector_status last_connector_result;
> >> +    struct delayed_work hpd_work;
> >>  };
> >>
> >>  const struct dw_hdmi_plat_data *dw_hdmi_to_plat_data(struct dw_hdmi *hdmi)
> >> @@ -2528,6 +2531,7 @@ static void dw_hdmi_connector_force(struct drm_connector *connector)
> >>
> >>      mutex_lock(&hdmi->mutex);
> >>      hdmi->force = connector->force;
> >> +    hdmi->last_connector_result = connector->status;
> >>      dw_hdmi_update_phy_mask(hdmi);
> >>      mutex_unlock(&hdmi->mutex);
> >>  }
> >> @@ -3046,6 +3050,16 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense)
> >>  }
> >>  EXPORT_SYMBOL_GPL(dw_hdmi_setup_rx_sense);
> >>
> >> +static void dw_hdmi_hpd_work(struct work_struct *work)
> >> +{
> >> +    struct dw_hdmi *hdmi = container_of(work, struct dw_hdmi, hpd_work.work);
> >> +
> >> +    if (hdmi->bridge.dev) {
> >> +            drm_helper_hpd_irq_event(hdmi->bridge.dev);
> >
> > Nit: please consider this for the followup cleanup. The
> > drm_helper_hpd_irq_event() is not very effective: we already know which
> > bridge (and thus connector) caused the HPD event.
> >
> > Moreover, the call should be redundant as drm_bridge_hpd_notify will
> > call the registered callback, which normally would be
> > drm_bridge_connector_hpd_cb(). Internally, this function calls
> > drm_kms_helper_connector_hotplug_event().
>
> I disagree in part, based on my testing, without a call to
> drm_helper_hpd_irq_event() or drm_connector_helper_hpd_irq_event() the
> internal check_connector_changed() never seem to be reached to detect
> any connector->status and/or connector->epoch_counter changes.
>
> In my ongoing work to convert dw-hdmi to become a hdmi bridge, I have
> actually done the opposite to what you suggest here and instead fully
> dropped the call to drm_bridge_hpd_notify() made here.

That doesnt' sound correct, but maybe it's because dw_hdmi isn't using
drm_bridge_conenctor. The latter one registers a hook in the HPD
bridge, which then receives the event and performs all the
notifications. If the dw_hdmi doesn't do it (because you don't need
it), then it's fine for now. When you work on conveting dw_hdmi to
DBC, I'd recommend using the bridge notification instead (as it would
then play nice with the rest of the bridge and HDMI framework).

>
> drm_bridge_connector_detect() calls drm_bridge_connector_hpd_notify()
> so any bridges should already be notified as part of any internal
> check_connector_changed() handling.
>
> Maybe something like following could be an option:
>
>         changed = drm_connector_helper_hpd_irq_event(connector);
>         if (changed)
>                 drm_bridge_hpd_notify(bridge, connector->status);
>
> I will likely keep this as-is to keep existing behavior in a v4, as this
> patch was just about de-bouncing the existing calls being made at HPD.

Yep.

>
> Regards,
> Jonas
>
> >
> >> +            drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
> >> +    }
> >> +}
> >> +
> >>  static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
> >>  {
> >>      struct dw_hdmi *hdmi = dev_id;
> >> @@ -3097,10 +3111,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
> >>                      status == connector_status_connected ?
> >>                      "plugin" : "plugout");
> >>
> >> -            if (hdmi->bridge.dev) {
> >> -                    drm_helper_hpd_irq_event(hdmi->bridge.dev);
> >> -                    drm_bridge_hpd_notify(&hdmi->bridge, status);
> >> -            }
> >> +            mod_delayed_work(system_percpu_wq, &hdmi->hpd_work,
> >> +                             msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
> >>      }
> >>
> >>      hdmi_writeb(hdmi, intr_stat, HDMI_IH_PHY_STAT0);
> >> @@ -3420,6 +3432,8 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
> >>              goto err_res;
> >>      }
> >>
> >> +    INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_hpd_work);
> >> +
> >>      ret = devm_request_threaded_irq(dev, irq, dw_hdmi_hardirq,
> >>                                      dw_hdmi_irq, IRQF_SHARED,
> >>                                      dev_name(dev), hdmi);
> >> @@ -3552,6 +3566,8 @@ EXPORT_SYMBOL_GPL(dw_hdmi_probe);
> >>
> >>  void dw_hdmi_remove(struct dw_hdmi *hdmi)
> >>  {
> >> +    disable_delayed_work_sync(&hdmi->hpd_work);
> >> +
> >>      drm_bridge_remove(&hdmi->bridge);
> >>
> >>      if (hdmi->audio && !IS_ERR(hdmi->audio))
> >> --
> >> 2.53.0
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
