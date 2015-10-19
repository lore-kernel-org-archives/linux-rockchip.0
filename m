From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [RFC PATCH v3 2/4] drm/imx: Convert the probe function to the
 generic drm_of_component_probe()
Date: Mon, 19 Oct 2015 16:15:14 +0100
Message-ID: <20151019151514.GH32532@n2100.arm.linux.org.uk>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-3-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1445267270-23126-3-git-send-email-Liviu.Dudau@arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBPY3QgMTksIDIwMTUgYXQgMDQ6MDc6NDhQTSArMDEwMCwgTGl2aXUgRHVkYXUgd3Jv
dGU6Cj4gVGhlIGdlbmVyaWMgZnVuY3Rpb24gaXMgZnVuY3Rpb25hbGx5IGVxdWl2YWxlbnQgdG8g
dGhlIGRyaXZlcidzCj4gaW14X2RybV9wbGF0Zm9ybV9wcm9iZSgpLiBVc2UgdGhlIGdlbmVyaWMg
ZnVuY3Rpb24gYW5kIHJlZHVjZSB0aGUKPiBvdmVyYWxsIGNvZGUgc2l6ZS4KCkxvb2tzIGZpbmUs
IHRoYW5rcy4KCkFja2VkLWJ5OiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtLmxpbnV4Lm9y
Zy51az4KCi0tIApGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lOiBjdXJyZW50bHkgYXQg
OS42TWJwcyBkb3duIDQwMGticHMgdXAKYWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWls
aW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
