Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D75EFF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 18:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmL4Qg4APxCulLJCfjpWm8Dkkj4zh7Ax6NunsecoNbo=; b=EH6ymJF2hNuM1X
	woO4glOKI6b1IdjlE/Hn7Mm1h9ujTpR+D3oglUaV15MJHP+w4BVoW3vyWqLBc5N5MRzk4kbAKrbje
	HFT6pcQyLfFioOVVQAKGl7kJW1iePqmuhT57pQ3k6ULTZPncWDoh7Ljv6A40bJ4HuYuXgSPtwMJfP
	YLzjIU21fQys7znhO1HcG5sogiQRQqyYp4SX7hCLn0voXQgI2cYZHEJG6poxQ+L7mVeMxK3MdzYkl
	TE6wyg2MPWBcHicInnBkx+pQE4rHFX6hCH3aBJvLNKNdJBRUQfmtNgbPM74vfJ1y+FpUEf4xgPfib
	bxTRM2IjxqyxdM5FeLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHnYv-000000027o0-3yBd;
	Tue, 28 Apr 2026 18:53:37 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHnYt-000000027md-1j3t
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 18:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1777402413;
 bh=k9lpDu/EBPmysPoLDlLSYJQEimiqBesJ10bN4Ceg2ak=;
 b=NB9aZ/jk1mzDj1Vl58xa82lrgI1BUKNOI8Yz4e6iCDQNi4yAmNsZrAzQxeSXHYdgB27WlQXp+
 SjMnqbK61TKxPctUyaApDWDCDFE31Qf4Mizx5WlfmSWG42SToO/nxurPlZliFAz2jgCmaZUpMG3
 yOF1Vv24OoZytwVnHyGYR0FxOW4531mIR1DhDtqCNEjmtQUaMU3h+9QFlY05UShAhAoLF9Z+Tye
 P5KWC5+FyhxWEfFoMKUervK8lDmc0Nu+lBzpES/4jIyh/fsF5GZ1n2hFeoZpTGwdFFzaMiybO8X
 Kp+zXdpzf5GoDg8CRTGgdAuyMtWnH9PlG6CIDIV8tqhQ==
X-Forward-Email-ID: 69f1021fc8c0cea2868e9b35
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d9d55427-2f56-4e3b-a476-f3981c9c20a2@kwiboo.se>
Date: Tue, 28 Apr 2026 20:53:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/13] drm: bridge: dw_hdmi: Use
 dw_hdmi_connector_status_update()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-13-jonas@kwiboo.se>
 <nsgxyv5sflscs66kxcgbyapivu3yjskfqzeqkt4yhnjfomyfav@rkxft2e6lqbd>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <nsgxyv5sflscs66kxcgbyapivu3yjskfqzeqkt4yhnjfomyfav@rkxft2e6lqbd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_115335_761523_5956694E 
X-CRM114-Status: GOOD (  14.04  )
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

Hi Dmitry,

On 4/28/2026 2:42 PM, Dmitry Baryshkov wrote:
> On Fri, Apr 03, 2026 at 06:52:58PM +0000, Jonas Karlman wrote:
>> Update connector EDID and CEC phys addr from detect and force funcs to
>> ensure that userspace always have access to latest read EDID after a
>> sink use a HPD low voltage pulse to indicate that EDID has changed.
>>
>> With EDID being updated in detect and force funcs, there should no
>> longer be a need to re-read EDID in get_modes funcs, so drop it.
>>
>> This change make the dw-hdmi connector work more closely like the bridge
>> connector does with a hdmi bridge.
> 
> Please consider using drm_atomic_helper_connector_hdmi_update()
> directly.

It is unfortunately not possible to use that helper unless
connector->hdmi.funcs has been assigned a value, currently something
that is only done in drmm_connector_hdmi_init().

As briefly mentioned in the cover letter, I am working on converting
dw-hdmi to be a hdmi bridge, so this function will be replaced/removed
in a future series.

See [1] for a work-in-progres snapshot where dw-hdmi use the bridge
connector and has been converted to a hdmi bridge. This works great on
Rockchip RK3328, RK3399 and RK3568. More testing and cleanup is needed
before something beyond the initial HPD, CEC and EDID rework/cleanup
currently handled in this series is ready for posing to ML.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20260427-rk-hdmi-v2/

Regards,
Jonas

> 
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v3: Reworked 'Update EDID during hotplug processing' patch
>> ---
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++----------
>>  1 file changed, 14 insertions(+), 10 deletions(-)
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
